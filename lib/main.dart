import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: hommee());
  }
}

class hommee extends StatelessWidget {
  List<String> imgs = [
    "assets/images/download (5).jpg",
    "assets/images/images (1).jpg",
    "assets/images/WhatsApp Image 2025-08-20 at 23.08.24_26b425b3.jpg",
    "assets/images/download (6).jpg",
    "assets/images/download.jpg",
"assets/images/WhatsApp Image 2025-08-20 at 23.24.39_4fe217db.jpg",
    "assets/images/WhatsApp Image 2025-08-20 at 22.59.41_bdc39161.jpg",
    "assets/images/images (3).jpg",
  ];
  List<String> title = [
    "General",
    "Entertainment",
    "Sports",
    "Business",
    "Technology",
    "Health",
    "Beauty",
    "Documentry",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Title(
            color: Colors.white,
            child: Text("News App", style: TextStyle(color: const Color.fromARGB(255, 220, 220, 220))),
          ),
          backgroundColor: const Color.fromARGB(226, 0, 128, 255),
          leading: Icon(Icons.notifications_outlined,color: const Color.fromARGB(255, 217, 217, 217),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 200,

                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: 0.85,
                        ),
                    itemCount: imgs.length,
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (context, index) {
                      return GestureDetector(
                      
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.zero,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                ),
                                child: Image.asset(
                                  imgs[index],
                                  width: 80,
                                  height: 60,
                                ),
                              ),
                              const SizedBox(height: 8),
                        
                              Text(
                                title[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: Color.fromARGB(255, 22, 22, 22),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: double.infinity,
                  height: 2,
                  color: const Color.fromARGB(255, 168, 168, 168),
                ),



                
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}

