import 'package:flutter/material.dart';

class CustomCont extends StatelessWidget {
  const CustomCont({
    required this.title,
    required this.paragraph,
    required this.imageLink,
  });
  final String paragraph;
  final String title;
  final String imageLink;
@override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
      overflow: TextOverflow.ellipsis,
                  title,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                ),
                Text(paragraph,maxLines: 2,
      overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15.8,fontWeight: FontWeight.w300),),
              ],
            ),
          ),
          Column(children: [Image.network(imageLink, width: 140)]),
        ],
      ),
    );
  }
}
