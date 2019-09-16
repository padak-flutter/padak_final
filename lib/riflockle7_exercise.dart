// material Design System + 알파 (구글)
import 'package:flutter/material.dart';

// 말 그대로 메인 함수
// Scaffold : Material Design의 기본 골격을 쉽게 추가할 수 있는 위젯
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme : 테마 (전역으로 설정되는 것)
      theme: ThemeData(),
      // home : 메인 화면
      home: RiflockleDetailPage(),
    );
  }
}

class RiflockleDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        width: 288.0,
        child: Column(
          // 수직에 대한 alignMent : mainAxisAlignment
          // 수평에 대한 alignMent : crossAxisAlignment
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 96.0,
              height: 96.0,
              child: Row(
                children: <Widget>[
                  Image.network(
                      "https://avatars0.githubusercontent.com/u/29768423?s=460&v=4"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "abcdefg",
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    "이한결은 전주에 가서 \n비빔밥과 스폰지밥을 스펀지했다. \n타인은 지옥이다.",
                    style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// stateLess : 상태가 없음
class RiflocklelessPage extends StatelessWidget {
  // Android의 onCreate() 비슷한 개념
  // 렌더링 할 때 그려지는 개념
  @override
  Widget build(BuildContext context) {
    // Scaffold : 화면 (xml)
    return Scaffold(
      appBar: AppBar(
        // 타이틀 이전에 나오는 위젯 설정 (오로지 1개)
        leading: FlatButton(
          child: Text("이한결 짱"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return null;
            }));
          },
        ),
        title: Text("Main"),
        // 타이틀 이후에 나오는 위젯 설정
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return null;
              }));
            },
          ),
        ],
      ),

      // Container : 마진 패팅 align decoration color 등 설정이 가능한 다재다능한 View
      // Center : 가운데 정렬밖에 할 수 없음
      body: Center(
        // Row : LinearLayout orientation horizontal
        // child: new Row(
        //   children: <Widget>[
        //     new Text("Hello Flutter"),
        //     new Text("Hello Flutter - "),
        //   ],
        // ),

        // Column : LinearLayout orientation vertical
        child: new Column(
          children: <Widget>[
            new Text("Hello Flutter"),
            new Text("Hello Flutter - "),
          ],
        ),
      ),
    );
  }
}

// stateFul : 상태가 있음
class RiflocklefulPage extends StatefulWidget {
  // Android의 onCreate() 비슷한 개념
  // 렌더링 할 때 그려지는 개념
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}

// StateFulWidget에서 항상 State를 상속받는 클래스를 선언해놔야한다.
class _RiflocklefulState extends State<RiflocklefulPage> {
  // 상태 초기설정
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // initState 다음에 실행되는 메소드
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
