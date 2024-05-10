import 'package:flutter/material.dart';
import 'package:form_app/form.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter name here',
                    ),
                  ),
          ),
          Container(
          //   padding: const EdgeInsets.all(20),
            child: Expanded(
              child: FormWrapper(),
              ),
          ),
          Expanded(
            child: Image.asset('assets/red-cross-background.jpg',
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter,
            )
          )
        ],
        )
    );
  }
}