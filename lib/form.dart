import 'package:flutter/material.dart';
import 'package:form_app/buttonStyle.dart';

class ResponseForm extends StatefulWidget {
  const ResponseForm({super.key});

  @override
  State<ResponseForm> createState() => _ResponseFormState();
}

class _ResponseFormState extends State<ResponseForm> {

  int painIntensity = 0;
  int careDifficulty = 0;
  int liftDifficulty = 0;

  void incPain() {
    setState(() {
      painIntensity = painIntensity < 5 ? painIntensity + 1 : 5;
    });
  }
  void decPain() {
    setState(() {
      if(painIntensity > 0) {
        painIntensity -= 1;
      }
    });
  }

  void incCareDif() {
    setState(() {
      careDifficulty = careDifficulty < 5 ? careDifficulty + 1 : 5;
    });
  }
  void decCareDif() {
    setState(() {
      if(careDifficulty > 0) {
        careDifficulty -= 1;
      }
    });
  }

  void incLiftDif() {
    setState(() {
      liftDifficulty = liftDifficulty < 5 ? liftDifficulty + 1 : 5;
    });
  }
  void decLiftDif() {
    setState(() {
      if(liftDifficulty > 0) {
        liftDifficulty -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Pain Intensity: '),
            const Expanded(child: const SizedBox()),
            Text(' ${painIntensity} '),
            DecreaseButton(
              onPressed: decPain,
              ),
            IncreaseButton(
              onPressed: incPain
              ),
          ],
        ),
        Row(
          children: [
            Text('Personal Care Difficulty: '),
            const Expanded(child: const SizedBox()),
            Text(' ${careDifficulty} '),
            DecreaseButton(
              onPressed: decCareDif,
              ),
            IncreaseButton(
              onPressed: incCareDif
              ),
          ],
        ),
        Row(
          children: [
            Text('Lifting Difficulty: '),
            const Expanded(child: const SizedBox()),
            Text(' ${liftDifficulty} '),
            DecreaseButton(
              onPressed: decLiftDif,
              ),
            IncreaseButton(
              onPressed: incLiftDif,
              ),
          ],
        ),

      ],
    );
  }
}

