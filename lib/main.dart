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
        body: const Align(
          alignment: Alignment.topLeft,
          child: DropMenu()
        ),
      ),
    );
  }
}

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  State<DropMenu> createState() => _DropMenu();
}

class SelectMenu extends StatefulWidget {
  const SelectMenu({Key? key}) : super(key: key);

  @override
  State<SelectMenu> createState() => _SelectMenu();
}

class _DropMenu extends State<DropMenu> {
  String defaultValue = 'A Level';

  @override
  Widget build(BuildContext content) {
    return DropdownButton<String>(
        value: defaultValue,
        icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    underline: Container(
    height: 2,
    color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? newValue) {
    setState(() {
    defaultValue = newValue!;
    });
    },
    items: <String>['A Level', 'Technical Diploma', 'AHHH', 'Four']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList());
  }
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
