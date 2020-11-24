import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://static.wikia.nocookie.net/disney/images/5/53/Stan_Lee.jpg',
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://static.wikia.nocookie.net/disney/images/5/53/Stan_Lee.jpg'),
          placeholder: AssetImage("assets/jar-loading.gif"),
					fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
