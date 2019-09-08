import "package:flutter/material.dart";

class DetailPage extends StatelessWidget {
  final Image image;
  final String title;
  final String contents;

  DetailPage(this.image, this.title, this.contents);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Center(
        child: Text("Detail"),
      ),
    );
  }
}
