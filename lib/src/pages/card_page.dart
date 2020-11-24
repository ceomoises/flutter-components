import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
					SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
					SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
			elevation: 10.0,
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0) ),
      child: Column(
        children: [
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('Soy el titulo de la tarjeta'),
              subtitle:
                  Text('Descripción de una tarjeta con un list tile sencillo')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text("Cancelar"),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Ok"),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
			elevation: 10.0,
			clipBehavior: Clip.antiAlias,
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),
      child: Column( 
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://static.educalingo.com/img/en/800/landscape.jpg'),
						fadeInDuration: Duration(milliseconds: 200),
						height: 300,
						fit: BoxFit.cover,
					),
          // Image(
          //   image: NetworkImage('https://static.educalingo.com/img/en/800/landscape.jpg')
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'),
          )
        ],
      ),
    );
  }
}
