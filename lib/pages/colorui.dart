import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorui extends StatefulWidget{
  @override
  _Colorui createState ()=> _Colorui();
}


class _Colorui extends State<Colorui>{

  List<Container> _buildGuidTitleList(int count) {
    return List<Container>.generate(
      count, (int index) => Container(
        child: Center(
            child:Container(
              alignment: Alignment.center,
              color: Colors.lightBlueAccent,
              child:  Text("${index}"),
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Color UI",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),
                Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),
                Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),
                Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),Text(
                  "123456",
                  style: TextStyle(height: 8),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            alignment: Alignment.bottomCenter,
            color: Colors.white,
            child: GridView.extent(
              //次轴的宽度
              maxCrossAxisExtent: 150,
              children: _buildGuidTitleList(9), //添加
            )
          ),
        ],
      ),
    );
  }

}