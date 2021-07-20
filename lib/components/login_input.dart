import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginInput extends StatefulWidget{

  final String title; //输入框的title

  final String hint;

  final ValueChanged<String> onChanged;


  final ValueChanged<bool> focusChanged;

  final bool lineStretch;

  final bool obsuretext;

  final TextInputType keyboardType;

  const LoginInput(
      {
        Key key,
        this.title,
        this.hint,
        this.onChanged,
        this.focusChanged,
        this.lineStretch = false,
        this.keyboardType,
        this.obsuretext = false})
      : super(key : key);

  @override
  _LoginInputState createState()=> _LoginInputState();

}


class _LoginInputState extends State<LoginInput>{
  final  _focusNode = FocusNode();
  @override
  void initState (){
    super.initState();
    _focusNode.addListener(() {
      print("has focus: ${_focusNode.hasFocus} ");
      if(widget.focusChanged != null){
        widget.focusChanged(_focusNode.hasFocus);
      }
    });
  }

  @override
  void dispose(){
    _focusNode.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left : 15),
              width: 100,
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 16),
              ),
            ),
            _input()
          ],

        ),
        Padding(
          padding: EdgeInsets.only(left: !widget.lineStretch ? 15 : 0),
          child: Divider(
            height: 1,
            thickness: 0.5,
          ),
        )
      ],
    );
  }


  @override
  _input(){
    return Expanded(child: TextField(
      focusNode: _focusNode,
      onChanged: widget.onChanged,
      obscureText: widget.obsuretext,
      keyboardType: widget.keyboardType,
      autofocus: !widget.obsuretext,
      cursorColor: Colors.lightBlueAccent,
      style: TextStyle(fontSize: 16 , color: Colors.black , fontWeight: FontWeight.w300),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, right: 20),
        border: InputBorder.none,
        hintText: widget.hint ?? '',
        hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
      ),
    ));
  }
}

