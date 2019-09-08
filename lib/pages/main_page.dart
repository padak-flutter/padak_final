import "package:flutter/material.dart";
import 'package:padak/pages/search_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchPage();
              }));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(color: Colors.blueAccent),
            height: 64,
            child: Center(
              child: Text("DropDownMenu"),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemBuilder: (context, item) {
                return Center(
                  child: Text("asdf"),
                );
              },
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
