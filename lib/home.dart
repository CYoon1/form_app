import 'package:flutter/material.dart';


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
            child: const Text("Name: _____"),
          ),
          Container(
            child: const FormInputs(),
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

class FormInputs extends StatefulWidget {
  const FormInputs({super.key});

  @override
  State<FormInputs> createState() => _FormInputsState();
}

class _FormInputsState extends State<FormInputs> {
  int unit = 0;

  void increaseAge() {
    setState(() {
      unit += 1;
    });
  }
  void decreaseAge() {
    setState(() {
      if(unit > 0) {
        unit -= 1;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('unit: ${unit}'),
            const Expanded(child: const SizedBox()),
            TextButton(
              onPressed: decreaseAge, 
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue[600],
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                )
              ),
              child: const Text('-')),
            TextButton(
              onPressed: increaseAge, 
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[600],
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
                )
              ),
              child: const Text('+')),
          ],
          )

      ],
    );
  }
}