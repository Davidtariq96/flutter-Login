// ignore_for_file: unused_element
import 'package:flutter/material.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff123456),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Stack(
                children: [
                  Positioned(
                    left: -50,
                    top: - 100,
                    child: SizedBox(
                      width: 250,
                      height: 300,
                      child: Image(
                        image: AssetImage('assets/down -top.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -150,
                    top: -200,
                    child: SizedBox(
                      width: 250,
                      height: 300,
                      child: Image(
                          image: AssetImage('assets/up-top.png')
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: double.maxFinite,
              child: Column(
                children: [
                  Text("Log In", style: TextStyle(
                    color: Colors.white, fontSize: 25, fontWeight:FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                      height: 19
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Email Address",
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 15
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 15
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xff11818A),
                    ),
                    child: TextButton(onPressed: (){},
                        child: Text(
                          "LOGIN", style: TextStyle(
                          color: Colors.white, fontSize: 15, fontWeight:FontWeight.bold,
                        ),
                        )
                    ),
                  ),
                  SizedBox(
                      height: 15
                  ),
                  Text("Forgot Password?", style: TextStyle(color:Color(0xff707070))),
                  SizedBox(
                      height: 10
                  ),
                  SizedBox(
                      height: 10
                  ),
                  Text("Register Here", style: TextStyle(color:Colors.white,
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children:const [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: SizedBox(
                      width: 150,
                      height: 70,
                      child: Image(
                        image: AssetImage('assets/bottom-left.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: -50,
                    child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Image(
                        image: AssetImage('assets/bottom-right.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




