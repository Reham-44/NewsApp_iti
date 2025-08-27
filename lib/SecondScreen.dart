import 'package:flutter/material.dart';
import 'package:newapp/models/model.dart';
import 'package:newapp/services/newsServices.dart';
import 'CustomCont.dart';

class SecondScreen extends StatefulWidget {
  final String category;
  const SecondScreen({super.key, required this.category});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<model> listt = [];
  bool isLoading=true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    listt = await NewsService().getNewsByCategory(widget.category);
    isLoading=false;
    setState(() {});
  }
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
    title: Text(widget.category,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
    ),  ),

      body:Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child:
        Expanded(
          
              child: isLoading
                  ?  Center(child: CircularProgressIndicator(
                    color: Colors.grey,
                  ))
                  :  ListView.builder(
                      itemCount: listt.length,
                      itemBuilder: (context, index) {
                        return CustomCont(
                          title: listt[index].title ?? "NO Title",
                          paragraph: listt[index].desc ?? "NO Description",
                          imageLink: listt[index].img ?? "https://demofree.sirv.com/nope-not-here.jpg",
                        );
                      },
                    ),
            ),
      
    )
    ));
  }
}


