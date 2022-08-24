import "package:flutter/material.dart";

class buildCard extends StatelessWidget {
  final String imgUrl;
  buildCard(this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Card(child: Image.asset(imgUrl));
  }
}
