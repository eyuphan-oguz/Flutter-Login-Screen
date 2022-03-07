import 'package:flutter/material.dart';
import 'package:randevu/color.dart';
import 'package:randevu/loginAppBar.dart';
import 'package:randevu/sign_in_options.dart';
import 'package:randevu/textStyle.dart';

import 'Inputs.dart';
import 'button.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  _Sign_in createState() => _Sign_in();
}

class _Sign_in extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorMyApp.instance.backGroundColor,
        appBar: SignUpAppBar(),
        body: Container(
          width: MediaQuery.of(context).size.width*1,
          child: Column(
            children: [
              SizedBox(height: 50,),
              SignUpOptionsWidgetDesign(title: "Sign up with one of the following options."),
              SizedBox(height: 30,),
              LoginInputText(title: "Name",hintTitle: "Name"),
              SizedBox(height: 20,),
              LoginInputText(title: "Email",hintTitle: "Email"),
              SizedBox(height: 20,),
              LoginInputText(title: "Password",hintTitle: "Password",),
              SizedBox(height: 50,),
              buttonClick(title: "Sign up",),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(onPressed: (){}, child: Text("Log in"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
