import 'package:flutter/material.dart';
import 'package:randevu/textStyle.dart';

import 'addUser.dart';
import 'color.dart';

class buttonClick extends StatefulWidget {
  late final String title;

  buttonClick({required String title}){
    this.title=title;
  }

  @override
  _buttonClickState createState() => _buttonClickState();
}

class _buttonClickState extends State<buttonClick> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.85,
      height: MediaQuery.of(context).size.height*0.08,
      child: TextButton(
          child: Text(
              widget.title,
              style: buttonText(),
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 25,right: 25)),
              foregroundColor: MaterialStateProperty.all<Color>(ColorMyApp.instance.textColorOption),
              backgroundColor: MaterialStateProperty.all<Color>(ColorMyApp.instance.buttonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: ColorMyApp.instance.buttonColor),

                  )
              )
          ),
          onPressed: () {addUser(name: "Eyüphan",email: "d",password: "123");
          addUser(name: "Eyüphan",email: "d",password: "123");}
      ),
    );
  }
}
