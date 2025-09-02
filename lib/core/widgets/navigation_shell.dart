import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sofiasmile/app/router.dart';
import 'package:sofiasmile/core/widgets/window_buttons.dart';
import 'package:window_manager/window_manager.dart';

class NavigationShell extends ConsumerStatefulWidget {
  const NavigationShell({
    super.key,
    required this.shellContext,
    required this.child,
  });

  final Widget child;
  final BuildContext? shellContext;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NavigationShellState();
}

class _NavigationShellState extends ConsumerState<NavigationShell>
    with WindowListener {
  final viewKey = GlobalKey(debugLabel: 'Navigation View Key');
  // Pannel Items are the items displayed on the navigation on the left
  late final List<NavigationPaneItem> pannelItems =
      [
        PaneItem(
          key: const ValueKey('/'),
          icon: const WindowsIcon(WindowsIcons.home),
          title: const Text('Acasă'),
          body: const SizedBox.shrink(),
        ),
        PaneItem(
          key: const ValueKey('/patients_registry'),
          icon: const WindowsIcon(WindowsIcons.people),
          title: const Text('Registrul Pacienților'),
          body: const SizedBox.shrink(),
        ),
        PaneItem(
          key: const ValueKey('/appointments'),
          icon: const WindowsIcon(WindowsIcons.calendar),
          title: const Text('Programări'),
          body: const SizedBox.shrink(),
        ),
        PaneItem(
          key: const ValueKey('/administration'),
          icon: const WindowsIcon(WindowsIcons.admin),
          title: const Text('Administrare'),
          body: const SizedBox.shrink(),
        ),
        // Add your panel items here
      ].map<NavigationPaneItem>((e) {
        PaneItem buildPaneItem(PaneItem item) {
          return PaneItem(
            key: item.key,
            icon: item.icon,
            title: item.title,
            body: item.body,
            onTap: () {
              final String path = (item.key as ValueKey).value.toString();
              if (GoRouterState.of(context).uri.toString() != path) {
                // Navigate to the route associated with this panel item
                context.go(path);
              }
              item.onTap?.call();
            },
          );
        }

        if (e is PaneItemExpander) {
          return PaneItemExpander(
            key: e.key,
            icon: e.icon,
            title: e.title,
            body: e.body,
            items: e.items.map((item) {
              if (item is PaneItem) return buildPaneItem(item);
              return item;
            }).toList(),
          );
        }
        return buildPaneItem(e);
      }).toList();
  // Here the window is initialised
  @override
  void initState() {
    WindowManager.instance.addListener(this);
    super.initState();
  }

  // This is called when application exits
  @override
  void dispose() {
    WindowManager.instance.removeListener(this);
    super.dispose();
  }

  // A helper method to calcualte the current page index
  int _calcualteSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    int indexOriginal = pannelItems
        .where((item) => item.key != null)
        .toList()
        .indexWhere((item) {
          final path = (item.key as ValueKey).value.toString();
          return location == path;
        });
    if (indexOriginal == -1) {
      return 0;
    }
    return indexOriginal;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.shellContext != null) {
      if (!router.canPop()) {
        setState(() {
          // Update the state to reflect the current route
        });
      }
    }
    return NavigationView(
      key: viewKey,
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        leading: () {
          final enabled = widget.shellContext != null && router.canPop();

          final onPressed = enabled
              ? () {
                  if (router.canPop()) {
                    context.pop();
                    setState(() {
                      // Update the state to reflect the current route
                    });
                  }
                }
              : null;
          return NavigationPaneTheme(
            data: NavigationPaneTheme.of(context).merge(
              NavigationPaneThemeData(
                unselectedIconColor: WidgetStateProperty.resolveWith((states) {
                  if (states.isDisabled) {
                    return ButtonThemeData.buttonColor(context, states);
                  }
                  return ButtonThemeData.uncheckedInputColor(
                    FluentTheme.of(context),
                    states,
                  ).basedOnLuminance();
                }),
              ),
            ),
            child: Builder(
              builder: (context) {
                return PaneItem(
                  icon: const Center(
                    child: WindowsIcon(WindowsIcons.back, size: 12),
                  ),
                  title: const Text('Înapoi'),
                  enabled: enabled,
                  body: const SizedBox.shrink(),
                ).build(
                  context,
                  false,
                  onPressed,
                  displayMode: PaneDisplayMode.compact,
                );
              },
            ),
          );
        }(),
        title: () {
          if (kIsWeb) {
            return const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text('Sofia Smile'),
            );
          }
          return const DragToMoveArea(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text('Sofia Smile'),
            ),
          );
        }(),
        actions: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [if (!kIsWeb) WindowButtons()],
        ),
      ),
      // Pane Builder
      paneBodyBuilder: (item, child) {
        final name = item?.key is ValueKey
            ? (item?.key as ValueKey).value
            : null;
        return FocusTraversalGroup(
          key: ValueKey('body$name'),
          child: widget.child,
        );
      },
      // Navigation Pane
      pane: NavigationPane(
        selected: _calcualteSelectedIndex(context),
        header: SizedBox(
          height: kOneLineTileHeight,
          child: ShaderMask(
            shaderCallback: (rect) {
              final color = Colors.blue;
              return LinearGradient(
                colors: [color, color.withAlpha(150)],
              ).createShader(rect);
            },
            child: const FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 80.0,
              textColor: Colors.white,
              duration: Duration.zero,
            ),
          ),
        ),
        // Display Mode [Compact]
        displayMode: PaneDisplayMode.compact,
        items: pannelItems,
      ),
    );
  }
}
