import 'package:flutter/material.dart';
import 'package:flutter_day6/pages/gellrey.dart';

late String name;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 221, 255),
        title: Text("Welcome"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            color: Colors.blueAccent,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(22),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Enter your name",
                    ),
                  ),
                  SizedBox(height: 20),
                  // Button widget
                  ElevatedButton(
                    onPressed: () {
                      name=_controller.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Gallrey(),
                        ),
                      );
                      print('Global name: $name');
                    },
                    child: Text("Submit"),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
