import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  String showType;
  String showName;
  String image;

  ShowCard(
      {super.key,
      required this.showType,
      required this.showName,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 250,
        width: 180,
        child: Column(
          children: [
            Container(
              child: Container(
                height: 200,
                width: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.fill),
                ),
              ),
            ),
            Text(
              showType,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color(0xff9b96d6)),
            ),
            Text(
              showName,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
