import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
    Navigator.pop(context);
  },icon:  Icon(Icons.arrow_back_ios)),
backgroundColor: const Color.fromARGB(226, 0, 128, 255),
    title: Text("back",style: TextStyle(color: Colors.white),),  ),
      body: Column(
        children: [
Text("llllllll"),


        ],
      )




      )


    );
  }
}