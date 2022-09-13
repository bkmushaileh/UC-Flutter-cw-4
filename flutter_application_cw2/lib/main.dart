import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget buildTextStyle(String name, double size, Color myColor) {
    return Text(
      name,
      style: TextStyle(
        color: myColor,
        fontSize: size,
        fontFamily: "Amiri",
      ),
    );
  }

  Widget buildRow(String prayTime, String pray, Color myColor, Color colorBg) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      color: colorBg,
      height: 67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: buildTextStyle(prayTime, 25, myColor),
          ),
          buildTextStyle(pray, 25, myColor),
        ],
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromARGB(255, 66, 22, 168),
                  Color.fromARGB(255, 1, 52, 94)
                ]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 50, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.view_in_ar, size: 25, color: Colors.white),
                    Container(
                      width: 120,
                    ),
                    buildTextStyle("العاصمه", 25, Colors.white),
                    Container(
                      width: 125,
                    ),
                    Icon(
                      Icons.settings,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 45, 1, 0),
                    child: buildTextStyle("١٠", 30, Colors.white),
                  ),
                  buildTextStyle("٢٥:١٢", 100, Colors.white),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: buildTextStyle("باقي على الاذان", 30, Colors.white),
              ),
              Container(
                color: Colors.white.withOpacity(0.5),
                height: 62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
                      child: buildTextStyle(
                          "٢١ فبراير - ٢٠ رجب", 20, Colors.white),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 2,
              ),
              buildRow("٣:٣٧ صباحا", "الفجر", Colors.white,
                  Colors.white.withOpacity(0.5)),
              buildRow("٥:٠٤ صباحا", "الشروق", Colors.white,
                  Colors.white.withOpacity(0.5)),
              buildRow("١١:٤٥ صباحا", "الظهر", Colors.white,
                  Colors.white.withOpacity(0.5)),
              buildRow("٣:٢١ مساءا", "العصر", Color.fromARGB(255, 0, 0, 0),
                  Colors.white),
              buildRow("٥:٢٥ مساءا", "المغرب", Colors.white,
                  Colors.white.withOpacity(0.5)),
              buildRow("٧:٥٠ مساءا", "العشاء", Colors.white,
                  Colors.white.withOpacity(0.5)),
            ],
          ),
        ),
      ),
    );
  }
}
