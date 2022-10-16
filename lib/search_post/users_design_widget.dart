import 'package:flutter/material.dart';
import 'package:flutter_photo_sharing_clone_app/search_post/user_model.dart';

class UsersDesignWidget extends StatefulWidget {

  Users? model;
  BuildContext? context;

  UsersDesignWidget(this.model, this.context);

  @override
  State<UsersDesignWidget> createState() => _UsersDesignWidgetState();
}

class _UsersDesignWidgetState extends State<UsersDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: EdgeInsets.all(16.0),
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                minRadius: 90.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    widget.model!.userImage!,
                  ),
                ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                widget.model!.name!,
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                  fontFamily: "Bebas",
                ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                widget.model!.name!,
                style: const TextStyle(
                  color: Colors.pink,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
