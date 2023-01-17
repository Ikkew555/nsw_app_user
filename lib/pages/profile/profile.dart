import 'package:flutter/material.dart';
import 'package:nsw_app/pages/profile/profile.view.dart';
import 'package:nsw_app/pages/profile/profile.view.dto.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ProfileDto profileDto;

  String imagePathProfile = "assets/profile_img.png";

  @override
  void initState() {
    super.initState();
    profileDto = ProfileDto(imagePathProfile: imagePathProfile);
  }

  @override
  Widget build(BuildContext context) {
    return ProfileView(
      profileDto: profileDto,
    );
  }
}
