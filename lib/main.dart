import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'MyTripPage.dart';
import 'HotelPage.dart';
import 'SettingPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: bottomSelectedIndex == 0 ? Colors.orange : Colors.black),
        title: Text('Trang Chủ', style: TextStyle(color: bottomSelectedIndex == 0 ? Colors.orange : Colors.black, 
        fontWeight: bottomSelectedIndex == 0 ? FontWeight.bold : FontWeight.normal)
        )
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.train, color: bottomSelectedIndex == 1 ? Colors.orange : Colors.black),
        title: Text('Chuyến Đi', style: TextStyle(color: bottomSelectedIndex == 1 ? Colors.orange : Colors.black,
        fontWeight: bottomSelectedIndex == 1 ? FontWeight.bold : FontWeight.normal)
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.hotel, color: bottomSelectedIndex == 2 ? Colors.orange : Colors.black),
        title: Text('Khách Sạn', style: TextStyle(color: bottomSelectedIndex == 2 ? Colors.orange : Colors.black,
        fontWeight: bottomSelectedIndex == 2 ? FontWeight.bold : FontWeight.normal)
        ),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings, color: bottomSelectedIndex == 3 ? Colors.orange : Colors.black),
        title: Text('Cài Đặt', style: TextStyle(color: bottomSelectedIndex == 3 ? Colors.orange : Colors.black,
        fontWeight: bottomSelectedIndex == 3 ? FontWeight.bold : FontWeight.normal)
        ),
      )
    ];
  }


  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );


  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Home(),
        MyTrips(),
        Hotels(),
        Settings(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  } 

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar:
        BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomSelectedIndex,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
 


 



 

 

 




