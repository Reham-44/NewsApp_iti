import 'package:flutter/material.dart';
import 'CustomCont.dart';

class SecondScreen extends StatelessWidget {

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
      body: SingleChildScrollView(
        child: Column(
          children: [
         Container(
          
                  padding: EdgeInsets.symmetric( vertical: 7,horizontal: 10),
                  child: Column(
                    spacing: 8,
                    children: [
                        CustomCont(
                      title: "Bad News!",
                      paragraph: "Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga ",
                      imageLink: "assets/images/images (3).jpg",
                    ),

                      CustomCont(                      
                        title: "Stock market today",
                        paragraph:  "important news important news important news important news ",
                        imageLink: "assets/images/download (1).jpg",
                      ),
                      CustomCont(
                        title: "Bad News!",
                        paragraph: "Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga ay 7aga",
                        imageLink: "assets/images/images (2).jpg",
                      ), CustomCont(
                        title: "Chocolate Cake ingredients",
                        paragraph: "flour, eggs, milk, butter, chocolate bar",
                        imageLink: "assets/images/images (2).webp",
                      ),
                      CustomCont(                    
                              title: "IMPORTANT!",
                        paragraph: "Ay 7aga tani Ay 7aga Ay tani 7aga Ay 7aga Ay 7aga ",
                        imageLink: "assets/images/download.jpg",                          
                      ),
                        CustomCont(
                          title: "Makeup techniques for 2025",

                      paragraph: "Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga ",
                      imageLink: "assets/images/WhatsApp Image 2025-08-20 at 22.59.41_bdc39161.jpg",
                    ),
                      CustomCont( 
                         title: "A sound mind in a sound body",  
                      paragraph: "Healthy food makes you strong and smart  ",
                      imageLink: "assets/images/WhatsApp Image 2025-08-20 at 23.24.39_4fe217db.jpg",
                      ),

                      
                      CustomCont(
                        title: "New technologies in 2025 ",
                        paragraph: "tech tech tech tech tech tech tech tech ",
                        imageLink: "assets/images/download (2).jpg",
                      ),
                     
                         CustomCont(
                        title: "Sports news",
                        paragraph:
                            "important news important news important news important news ",
                        imageLink:"assets/images/WhatsApp Image 2025-08-20 at 23.06.44_5c6cfb2e.jpg",
                  
                      ),
                      CustomCont(
                        title: "Bad News!",
                        paragraph: "Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga Ay 7aga ",
                        imageLink: "assets/images/images (3).jpg",
                      ),
                    ],
                  ),
                ),
        
          ],
        ),
      )




      )


    );
  }
}