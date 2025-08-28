import 'package:flutter/material.dart';
import 'package:newapp/CustomCont.dart';
import 'package:newapp/SecondScreen.dart';
import 'package:newapp/models/model.dart';
import 'package:newapp/services/newsServices.dart';
import 'package:skeletonizer/skeletonizer.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<model> listt = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    listt = await NewsService().getNewsByCategory("general");
    isLoading=false;
    setState(() {
    });
  }

  @override
  
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
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
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
                              SecondScreen(category: title[index])
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

            Expanded(
                              child:  FutureBuilder(future: NewsService().getNewsByCategory("general"), builder: (context, snapshot){
                               return Skeletonizer(
                enabled: true,
                child: ListView.builder(
                    itemCount: listt.length,
                    itemBuilder: (context, index) {
                      return CustomCont(
                        title: listt[index].title ?? "NO Title",
                        paragraph: listt[index].desc ?? "NO Description",
                        imageLink: listt[index].img ?? "https://demofree.sirv.com/nope-not-here.jpg",
                      );
                    },
                  ),
                  );
  } 
   )
            ,)

          ],
        ),
      ),
    );
  }
}

