import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  final Color color;
  ColorsPage(this.color);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: Text('Leti Demo')),
      body: Container(
        color: color,
      ),
    );
  }
}
