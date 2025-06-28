import 'package:customer_support_task/core/widgets/custom_appbar.dart';
import 'package:customer_support_task/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfilePictureUploadView extends StatelessWidget {
  const ProfilePictureUploadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: S.of(context).profilePicture,
        subtitle: S.of(context).uploadYouProfilePicture,
      ),
    );
  }
}
