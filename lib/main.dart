import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Mi Foto Gen 19-22'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 30, 40, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFBA98E8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF461AD3),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    'Castañeda Hernandez Luis Esteban ',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Divider(
                thickness: 3,
                indent: 100,
                endIndent: 100,
                color: Color(0xFF461AD3),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                    child: Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/3c9d30d1-2a0b-47f0-b7f5-432ec2593748.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 3,
                indent: 100,
                endIndent: 100,
                color: Color(0xFF461AD3),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFBA98E8),
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(
                      color: Color(0xFF461AD3),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    '6to I Programacion',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
