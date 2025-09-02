import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sofiasmile/app/app.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if ([
    TargetPlatform.windows,
    TargetPlatform.linux,
    TargetPlatform.macOS,
  ].contains(defaultTargetPlatform)) {
    await WindowManager.instance.ensureInitialized();
    windowManager.waitUntilReadyToShow().then((_) async {
      // This ensures that the window's default bar is hidden
      await windowManager.setTitleBarStyle(
        TitleBarStyle.hidden,
        windowButtonVisibility: false,
      );
      // This constrains the minimum size of the window
      await windowManager.setMinimumSize(const Size(500, 600));
      // Show the window
      await windowManager.show();
      // This prevents the window from being minimized to the taskbar
      await windowManager.setSkipTaskbar(false);
    });
  }

  runApp(const ProviderScope(child: App()));
}
