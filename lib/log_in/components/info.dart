import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_photo_sharing_clone_app/widgets/input_field.dart';

class Credentials extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _emailTextController = TextEditingController(text: "");
  final TextEditingController _passTextController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: const AssetImage(
              "images/logo1.png"
            ),
            backgroundColor: Colors.orange.shade800,
          ),
        ),
        const SizedBox(height: 15.0,),
        InputField(
          hintText: "Enter Email",
          icon: Icons.email_rounded,
          obscureText: false,
          textEditingController: _emailTextController,
        ),
        const SizedBox(height: 15.0,),
        InputField(
          hintText: "Enter Password",
          icon: Icons.lock_rounded,
          obscureText: false,
          textEditingController: _passTextController,
        ),
      ],
      ),
    );
  }
}
