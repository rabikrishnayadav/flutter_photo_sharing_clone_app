import 'package:flutter/material.dart';
import 'package:flutter_photo_sharing_clone_app/home_screen/home_screen.dart';

class SearchPost extends StatefulWidget {

  @override
  State<SearchPost> createState() => _SearchPostState();
}

class _SearchPostState extends State<SearchPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange.shade300, Colors.pink,]
              ),
            ),
          ),
          title: TextField(
            onChanged: (textEntered){

            },
            decoration: InputDecoration(
              hintText: "Search Post here...",
              hintStyle: const TextStyle(color: Colors.white54),
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: const Icon(Icons.search, color: Colors.white,),
                onPressed: (){
                  
                },
              ),
              prefixIcon: IconButton(
                  icon: const Padding(
                      padding: EdgeInsets.only(right: 12.0, bottom: 4.0),
                    child: Icon(Icons.arrow_back, color: Colors.white,),
                  ),
                onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
