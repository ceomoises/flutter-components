import 'package:flutter/material.dart';

class Sliderpage extends StatefulWidget {
  Sliderpage({Key key}) : super(key: key);

  @override
  _SliderpageState createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  double _valorSlider = 200;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              _crearSlider(),
              _crearCheckbox(),
							_crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          )),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10,
      max: 380,
      onChanged: (_bloquearCheck)?null:(valor){
				setState((){
					_valorSlider = valor;
				});
			},
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    // 	value: _bloquearCheck,
    // 	onChanged: (valor){
    // 		setState(() {
    // 			_bloquearCheck = valor;
    // 		});
    // 	}
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
			value: _bloquearCheck,
      onChanged: (valor){
				setState(() {
					_bloquearCheck = valor;
				});
			},
    );
  }

	Widget _crearSwitch() {

    return SwitchListTile(
      title: Text('Bloquear Slider'),
			value: _bloquearCheck,
      onChanged: (valor){
				setState(() {
					_bloquearCheck = valor;
				});
			},
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/78488991_10212692499226369_7117114985360130048_n.jpg?_nc_cat=106&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeFz1BjVEiPBkPBtd_3czoCkvvNgZ1m9AeK-82BnWb0B4tN-OBrVdeI28MGYMld7jDM&_nc_ohc=qawNIZjze3MAX9S-Lv8&_nc_ht=scontent-qro1-1.xx&oh=7cec52ce8d491b328c4aecd9c21bc45e&oe=5FDD5A0A'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
