import 'package:app_test/components/login_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  _Login createState ()=> _Login();
}


class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: EdgeInsets.only(top: 50),
        child: Container(
            child: ListView(
              children: [
                LoginInput(
                    title : "用户名",
                    hint: "请输入账号",
                    onChanged: (e){
                      print("onchange: ${e}");
                    },
                    focusChanged: (e){
                      print("focusChanged: ${e}");
                    },
                  keyboardType: TextInputType.number,
                ),
                LoginInput(
                  title : "密码",
                  hint: "请输入密码",
                  onChanged: (e){
                    print("onchange: ${e}");
                  },
                  focusChanged: (e){
                    print("focusChanged: ${e}");
                  },
                  obsuretext: true,
                ),
              ],
            )
        ),
      ),
    );
  }

}