import 'package:flutter/material.dart';
import 'package:flutter_photo_sharing_clone_app/account_check/account_check.dart';
import 'package:flutter_photo_sharing_clone_app/log_in/login_screen.dart';
import 'package:flutter_photo_sharing_clone_app/widgets/button_square.dart';
import 'package:flutter_photo_sharing_clone_app/widgets/input_field.dart';

class Credentials extends StatelessWidget {

  final TextEditingController _emailTextController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Center(
              child: Image.asset(
                "images/forget.png",
                width: 300.0,
              ),
            ),
          ),
          const SizedBox(height: 10.0,),
          InputField(
              hintText: "Enter Email",
              icon: Icons.email_rounded,
              obscureText: false,
              textEditingController: _emailTextController,
          ),
          const SizedBox(height: 15.0,),
          ButtonSquare(
            text: "Send link",
            colors1: Colors.red,
            colors2: Colors.redAccent,
            press: () async{

            },
            ),
          AccountCheck(
              login: false,
              press: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              }
          ),
        ],
      ),
    );
  }
}
