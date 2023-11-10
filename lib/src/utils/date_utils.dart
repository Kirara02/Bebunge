import 'package:easy_localization/easy_localization.dart';
import 'package:url_launcher/url_launcher_string.dart';

convertUTC(String? date) {
  return DateFormat("EEE, d MMM yyyy HH:mm:ss", 'ID').format(
      DateFormat("EEE, d MMM yyyy HH:mm:ss", 'EN')
          .parse(date ?? DateTime.now().toString()));
}

convertUTCtoDate(String? date) {
  return DateFormat("EEE, d MMM yyyy", 'ID').format(
      DateFormat("EEE, d MMM yyyy", 'EN')
          .parse(date ?? DateTime.now().toString()));
}

Future<void> UXlaunchUrl(String? url) async {
  if (!await launchUrlString(url!,
      mode: LaunchMode.externalApplication,
      webViewConfiguration: WebViewConfiguration(
          enableDomStorage: true, enableJavaScript: true))) {
    throw Exception('Could not launch $url');
  }
}
