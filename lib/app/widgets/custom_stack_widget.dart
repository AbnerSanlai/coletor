import 'dart:ui';
import 'package:flutter/material.dart';

class CustomStackWidget extends StatelessWidget {
  final String title;
  final String? localImage;
  final IconData? icon;
  final VoidCallback? funcaoclick;
  final double width;
  final bool quebralinha;

  const CustomStackWidget(
      {Key? key,
      this.title = "CustomStackWidget",
      this.icon,
      this.funcaoclick,
      this.localImage,
      required this.width,
      required this.quebralinha})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 70,
              width: width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(24, 169, 109, .7),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Container(
                margin: EdgeInsets.fromLTRB(4, quebralinha ? 4 : 22, 15, 15),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                // border: Border.all(color: Colors.black),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.black.withOpacity(0.5),
                //     spreadRadius: 4,
                //     blurRadius: 5,
                //     offset: Offset(0, 2),
                //   )
                // ],
              ),
              child: Center(
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(localImage!),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        onTap: funcaoclick,
      ),
    );
  }
}
