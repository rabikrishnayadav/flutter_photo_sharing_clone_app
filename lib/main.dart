import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
       if(snapshot.connectionState == ConnectionState.waiting){
         return const MaterialApp(
           debugShowCheckedModeBanner: false,
           home: Scaffold(
             body: Center(
               child: Center(
                 child: Text("Welcome to Photo Sharing Clone App"),
               ),
             ),
           ),
         );
       }
       else if(snapshot.hasError){
           return const MaterialApp(
             debugShowCheckedModeBanner: false,
             home: Scaffold(
               body: Center(
                 child: Center(
                   child: Text("An Error  occurred, Please wait..."),
                 ),
               ),
             ),
           );
         }
       return const MaterialApp(
         debugShowCheckedModeBanner: false,
         title: "Flutter Photo Sharing Clone App",
         home: Scaffold(),
       );
      }
    );
  }
}

