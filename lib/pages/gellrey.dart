import 'package:flutter/material.dart';
import 'package:flutter_day6/pages/infopage.dart';

class Gallrey extends StatefulWidget {
  const Gallrey({super.key});

  @override
  State<Gallrey> createState() => _Gallrey();
}

class _Gallrey extends State<Gallrey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(127, 29, 118, 186),
        title: Text(
          "The gallery",
          style: TextStyle(
            color: const Color.fromARGB(255, 48, 81, 242),
            fontSize: 30,
          ),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              print("name is roze");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Infopage(),),
              );
            },
            child: Container(
              width: 400,
              height: 800,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  color: const Color.fromARGB(255, 58, 79, 239),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/yellowflower.png",
                    width: 200,
                    height: 200,
                  ),
                  Image.asset(
                    "assets/redflower.png",
                    width: 200,
                    height: 200,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
