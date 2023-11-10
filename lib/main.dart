import 'package:easy_localization/easy_localization.dart';

import 'bootstrap.dart';
import 'src/app/app.dart';
import 'src/localization/support_language.dart';

Future<void> main() async {
  await bootstrap(() => EasyLocalization(
      supportedLocales: L10n.all,
      path: 'assets/l10n',
      startLocale: L10n.all[1], // <-- change the path of the translation files
      fallbackLocale: L10n.all[1],
      child: App()));
}

// flutter pub run build_runner build --delete-conflicting-outputs
// flutter packages pub run build_runner watch
// flutter pub run easy_localization:generate -S assets/l10n -f keys -O lib/l10n -o locale_keys.g.dart
