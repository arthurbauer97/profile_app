import 'package:flutter/material.dart';
import 'package:profile_app/components/header_widget.dart';
import 'package:profile_app/consts/images_consts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
                HeaderWidget(
                name: "Arthur Bauer",
                profission: "Mobile Developer",
                year: 23,
                img: IMAGE_AVATAR),
              ],
        ));
  }
}
