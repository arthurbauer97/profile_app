import 'package:flutter/material.dart';
import 'package:profile_app/consts/images_consts.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String profission;
  final int year;
  final String img;

  const HeaderWidget(
      {Key key,
      @required this.name,
      @required this.profission,
      @required this.year,
      @required this.img
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    height: 2,
                    width: 20,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                   img,
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  profission,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$year Years",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    height: 2,
                    width: 20,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
