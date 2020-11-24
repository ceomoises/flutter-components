import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			debugShowCheckedModeBanner: false,
			localizationsDelegates: [
				GlobalMaterialLocalizations.delegate,
				GlobalWidgetsLocalizations.delegate,
				GlobalCupertinoLocalizations.delegate,
			],
			supportedLocales: [
				const Locale('en', 'US'),
				const Locale('es', 'ES'),
			],
			title: 'Material App',
			// home: HomePage(),
			initialRoute: 'home',
			routes: getApplicationRoutes(),
			onGenerateRoute: (settings){
				print('Ruta llamada: ${settings.name}');
				return MaterialPageRoute(
					builder: (BuildContext context) => AlertPage()
				);
			},
		);
	}
}