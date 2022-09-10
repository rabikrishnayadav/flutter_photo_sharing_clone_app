import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_photo_sharing_clone_app/widgets/input_field.dart';

class Credentials extends StatefulWidget {

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials> {

  final TextEditingController _fullNameController = TextEditingController(text: "");
  final TextEditingController _emailController = TextEditingController(text: "");
  final TextEditingController _passController = TextEditingController(text: "");
  final TextEditingController _phoneNumController = TextEditingController(text: "");

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              // create show ImageDialog
            },
            child: CircleAvatar(
              radius: 90,
              backgroundImage: imageFile == null
                  ?
                  const AssetImage("images/avatar.png")
                  :
                  Image.file(imageFile!).image,
            ),
          ),
          const SizedBox(height: 10.0,),
          InputField(
              hintText: "Enter Username",
              icon: Icons.person,
              obscureText: false,
              textEditingController: _fullNameController,
          ),
          const SizedBox(height: 10.0,),
          InputField(
            hintText: "Enter Email",
            icon: Icons.email_rounded,
            obscureText: false,
            textEditingController: _emailController,
          ),
          const SizedBox(height: 10.0,),
          InputField(
            hintText: "Enter Password",
            icon: Icons.lock,
            obscureText: true,
            textEditingController: _passController,
          ),
          const SizedBox(height: 10.0,),
          InputField(
            hintText: "Enter Username",
            icon: Icons.phone_android,
            obscureText: false,
            textEditingController: _phoneNumController,
          ),
          const SizedBox(height: 10.0,),
        ],
      ),
    );
  }
}
