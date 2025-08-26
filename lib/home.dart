import 'package:flutter/material.dart';
import 'package:newapp/CustomCont.dart';
import 'package:newapp/SecondScreen.dart';
import 'package:newapp/models/model.dart';
import 'package:newapp/services/newsServices.dart';



class Home extends StatelessWidget {
   Home({super.key});

  
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
    "Science",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App",
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(226, 0, 128, 255),
        leading: const Icon(
          Icons.notifications_outlined,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.85,
                ),
                itemCount: imgs.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen()
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgs[index],
                          width: 80,
                          height: 60,
                          fit: BoxFit.cover,
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
                  );
                },
              ),
            ),

            const Divider(),

          //LIST VIEW WITH API



          ],
        ),
      ),
    );
  }
}

