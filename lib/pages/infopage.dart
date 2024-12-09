import 'package:flutter/material.dart';
import 'package:flutter_day6/pages/gellrey.dart';

class Infopage extends StatelessWidget {
  const Infopage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade200,
        title: Text("welcome"),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: (){
              print("name is roze");
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Gallrey(),));
            },
            child: Container(
              
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: const Color.fromARGB(255, 230, 152, 152),
                border: Border.all(
                  color: const Color.fromARGB(255, 239, 117, 117),
                  width: 4,
                )
              ),
              child: const Text("first thing ",
              style: TextStyle(
                fontSize: 24),),
            ),
          ),
           InkWell(
            onTap: (){
              print("name is roze");
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Gallrey(),));
            },
            child: Container(
              
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: const Color.fromARGB(255, 230, 152, 152),
                border: Border.all(
                  color: const Color.fromARGB(255, 239, 117, 117),
                  width: 4,
                )
              ),
              child: const Text("second thing ",
              style: TextStyle(
                fontSize: 24),),
            ),
          ),
             InkWell(
            onTap: (){
              print("name is roze");
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Gallrey(),));
            },
            child: Container(
              
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: const Color.fromARGB(255, 230, 152, 152),
                border: Border.all(
                  color: const Color.fromARGB(255, 239, 117, 117),
                  width: 4,
                )
              ),
              child: const Text("third thing",
              style: TextStyle(
                fontSize: 24),),
            ),
          )
        ],
      ),
    );
  }
}