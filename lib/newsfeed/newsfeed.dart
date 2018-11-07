import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: new AppBar(
        title: Text('News'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 10,
        itemBuilder: (context, i){
          return new Card(
            elevation: 4.0,
            child: new Container(
              padding: const EdgeInsets.all(16.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: new Text('5 days ago, BBC News'),
                  ),
                  new Row(
                    children: <Widget>[
                     new Expanded(
                       flex: 2,
                         child: new Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           verticalDirection: VerticalDirection.down,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                           Padding(
                             padding: const EdgeInsets.only(bottom: 4.0),
                             child: new Text('Apple Slowing older phones',
                             style: new TextStyle(
                               fontSize: 15.5,
                                 color: Colors.black,
                               fontWeight: FontWeight.bold
                             ),),
                           ),
                           new Text('The news media has incredible influence and power in shaping perceptions of the world to its viewers or readers. Controlling how information is disseminated to the public will undoubtedly mold how the public will view and interact with the world at large. When consuming news information, it is important that the sources be as accurate as possible. In an age of both cable news and online news, the amount of choices in new sources can be almost infinite. Therefore, it is important to be discerning and critical in order to find the best independent news websites.',
                             maxLines: 4,
                           style: new TextStyle(
                             fontSize: 15.0
                           ),)
                         ],)),
                      new SizedBox(width: 10.0,),
                      new Expanded(
                          child: new Column(
                            children: <Widget>[
                             Container(
                               height: 75.0,
                                 child: new Image.network('https://upload.wikimedia.org/wikipedia/en/thumb/f/ff/BBC_News.svg/1200px-BBC_News.svg.png')),
                             Container(
                               height: 20.0,
                               margin: const EdgeInsets.only(bottom: 4.0),
                               child: new Row(
                                 mainAxisAlignment: MainAxisAlignment.end,
                                 children: <Widget>[
                                   new IconButton(icon: new Icon(Icons.share, color: Colors.blue,), onPressed: (){}),
                                   new IconButton(icon: new Icon(Icons.bookmark_border),color: Colors.blue, onPressed: (){}),
                                 ],
                               ),
                             )
                            ],
                          ),
                      )
                  ],),

              ],),
            ),
          );
        },
      ),
    );
  }
}
