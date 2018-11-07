import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:leti_demo/newsfeed/newsfeed.dart';
import 'package:leti_demo/events/events.dart';
import 'package:leti_demo/more/more.dart';
import 'package:leti_demo/others/others.dart';

void main(){
  runApp(new MaterialApp(
    title: 'Leti Demo',
    home: new Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  final List<Widget> _pages = [
      News(),
      Events(),
      More(),
      Others(),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
              canvasColor: Colors.blue,
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: new BottomNavigationBar(
              currentIndex: _index,
              onTap: (int i){
                setState(() {
                  _index = i;
                });
              },
              items:[
                BottomNavigationBarItem(icon: Icon(Icons.rss_feed), title: Text('News')),
                BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('Events')),
                BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('More')),
                BottomNavigationBarItem(icon: Icon(Icons.dehaze), title: Text('Others')),
              ])),
      body: _pages[_index],
    );
  }
}
