import 'package:flutter/material.dart';

class Others extends StatefulWidget {
  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: (){})
        ],
      ),
    );
  }
}
