import 'package:flutter/material.dart';
import 'CustomCont.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
      appBar: AppBar(
        leading:  IconButton(onPressed: () {
    Navigator.pop(context);
  },icon:  Icon(Icons.arrow_back_ios,color: Colors.white,)),
backgroundColor: const Color.fromARGB(226, 0, 128, 255),
    title: Text("News",style: TextStyle(color: Colors.white),),  ),

      body:Column(
                            //listview

      )
      
    ));
  }
}


