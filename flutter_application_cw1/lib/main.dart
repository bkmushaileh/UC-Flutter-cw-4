import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//FUNCTION HERE!
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            "Animals",
            style: TextStyle(fontFamily: "Handlee"),
          ),
          backgroundColor: Color.fromARGB(255, 32, 2, 94),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      "Type: Bird",
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Handlee"),
                    ),
                    padding: EdgeInsets.fromLTRB(35, 190, 0, 0),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 246, 246),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 2, 7, 35),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(10),
                    height: 200,
                    width: 200,
                    child: Image.asset(
                      "images/flamingo.png",
                      height: 150,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: Text(
                  "Animal Name: Flamingo\nAge: IDK\nGender: Female",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Handlee",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
