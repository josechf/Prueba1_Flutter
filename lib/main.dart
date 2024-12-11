import 'package:flutter/material.dart';
import './np.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 17, 83, 4),
          brightness: Brightness.dark,
        ),
        fontFamily: 'montserrat',
        textTheme: TextTheme(
          displayMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      home: const MyHomePage(title: 'aprendiendo flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          PopupMenuButton<int>(
            onSelected: (int value) {
              // Acción cuando se selecciona una opción
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Seleccionaste: $value')),
              );
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 1,
                  child: Text("datitos 1"),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text("registro 2"),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text("Opción 3"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyLarge),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyLarge,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => pantallados()),
              );
            },
            child: Text("ir a pagina 2"),
          ),
          ElevatedButton(
            onPressed: () {
              print("Botón presionado");
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("cada text es como un child"),
                Text("texto 2")
              ],
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
