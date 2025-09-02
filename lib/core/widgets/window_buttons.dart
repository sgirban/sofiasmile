import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';

class WindowButtons extends ConsumerWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = FluentTheme.of(context);
    return SizedBox(
      width: 138,
      height: 50,
      child: WindowCaption(
        backgroundColor: Colors.transparent,
        brightness: theme.brightness,
      ),
    );
  }
}
