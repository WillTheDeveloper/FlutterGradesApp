import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UCAS Grade Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('UCAS Grade Calculator'),
        ),
        body: const Center(
          child: SelectMenu(),
        ),
        backgroundColor: Colors.grey,
      )

    );
  }
}

class SelectMenu extends StatefulWidget {
  const SelectMenu({Key? key}) : super(key: key);

  @override
  State<SelectMenu> createState() => _SelectMenu();
}

class _SelectMenu extends State<SelectMenu> {
  @override
  Widget build(BuildContext content) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('A Levels'),
          ),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Technical Diploma'),
          ),
        ],
      ),
    );
  }
}
