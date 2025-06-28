import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:url_launcher/url_launcher.dart';

class ExternalLinksController extends GetxController {
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
}
