import 'package:flutter/material.dart';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {
  //   return myHomeState();
  // }
  State<StatefulWidget> createState() =>
      myHomeState(); //we can write in one line also
}

class myHomeState extends State<MyHomePage> {
  var myData = 0;
  var myName = "";
  var text1 = TextEditingController();

  changeState() {
    setState(() {
      myData++;
    });
  }

  changeName() {
    setState(() {
      myName = text1.text.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("State")),
        body: Column(
          children: [
            Text("$myData"),
            ElevatedButton(
              onPressed: changeState,
              child: Text("Click me"),
            ),
            Text("My name is $myName"),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                  controller: text1,
                  decoration: InputDecoration(
                      labelText: "Name", border: OutlineInputBorder())),
            ),
            ElevatedButton(onPressed: changeName, child: Text("click me again"))
          ],
        ));
  }
}
