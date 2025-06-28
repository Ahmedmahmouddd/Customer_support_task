import 'package:url_launcher/url_launcher.dart';

Future<void> launchPhone() async {
  final Uri phoneUri = Uri(scheme: 'tel', path: '+201017094431');
  if (await canLaunchUrl(phoneUri)) {
    await launchUrl(phoneUri);
  }
}

Future<void> launchWhatsApp() async {
  final Uri whatsappUri = Uri.parse('https://wa.me/201017094431');
  if (await canLaunchUrl(whatsappUri)) {
    await launchUrl(whatsappUri, mode: LaunchMode.externalApplication);
  }
}

Future<void> launchGitHub() async {
  final Uri instagramUri = Uri.parse('https://github.com/Ahmedmahmouddd');
  if (await canLaunchUrl(instagramUri)) {
    await launchUrl(instagramUri, mode: LaunchMode.externalApplication);
  }
}

Future<void> launchLinkedIn() async {
  final Uri facebookUri = Uri.parse(
    'https://www.linkedin.com/in/ahmed-mahmoud-657492292/',
  );
  if (await canLaunchUrl(facebookUri)) {
    await launchUrl(facebookUri, mode: LaunchMode.externalApplication);
  }
}
