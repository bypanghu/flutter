import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget{
  @override
  _WelcomePage createState()=>_WelcomePage();
}


class _WelcomePage extends State<WelcomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
            "images/welcome.png"
        ),
      )
    );
  }

}