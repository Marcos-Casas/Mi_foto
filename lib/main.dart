import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Agregando bordes app de Marcos'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Padding(padding: EdgeInsetsDirectional.fromSTEB(50, 30, 50, 10), child: Material(borderRadius: BorderRadius.circular(20), elevation: 10, child: Container(width: double.infinity, height: 60, decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: 3.0), borderRadius: BorderRadius.circular(20)), child: Center(child: Text('Marcos Casas Caldera'))))),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                //
                color: Colors.black,
                width: 3.0,
              ),
              bottom: BorderSide(
                //
                color: Colors.black,
                width: 3.0,
              ),
            ),
          ),
          child: Image.network('https://github.com/Marcos-Casas/Flutter-mis-imagenes/blob/main/Mi%20cara.jpeg?raw=true'),
        ),
        Material(elevation: 10, borderRadius: BorderRadius.circular(5), child: Container(width: 200.0, height: 80.0, decoration: BoxDecoration(border: Border.all(width: 3.0, color: Colors.blue)), child: Center(child: Text('6J-A Programacion'))))
      ]),
    );
  }
}
