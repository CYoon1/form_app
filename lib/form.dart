import 'package:flutter/material.dart';
import 'package:form_app/buttonStyle.dart';

class ResponseForm extends StatefulWidget {
  const ResponseForm({super.key});

  @override
  State<ResponseForm> createState() => _ResponseFormState();
}

class _ResponseFormState extends State<ResponseForm> {

  int total = 0;
  int painIntensity = 0;
  int careDifficulty = 0;

  int liftDifficulty = 0;
  int walkDifficulty = 0;
  
  int sitDifficulty = 0;
  int standDifficulty = 0;

  int sleepDifficulty = 0;
  int socialDifficulty = 0;

  int travelDifficulty = 0;
  int employHomeDifficulty = 0;

  void getTotal() {
    setState(() {
      total = painIntensity + careDifficulty + liftDifficulty + walkDifficulty + sitDifficulty + standDifficulty + sleepDifficulty + socialDifficulty + travelDifficulty + employHomeDifficulty;
    });
  }
  void resetTotal() {
    setState(() {
      total = 0;
      painIntensity = 0;
      careDifficulty = 0;
      liftDifficulty = 0;
      walkDifficulty = 0;
      sitDifficulty = 0;
      socialDifficulty = 0;
      travelDifficulty = 0;
      employHomeDifficulty = 0;
    });
  }

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

  void incWalkDif() {
    setState(() {
      walkDifficulty = walkDifficulty < 5 ? walkDifficulty + 1 : 5;
    });
  }
  void decWalkDif() {
    setState(() {
      if(walkDifficulty > 0) {
        walkDifficulty -= 1;
      }
    });
  }

  void incSitDif() {
    setState(() {
      sitDifficulty = sitDifficulty < 5 ? sitDifficulty + 1 : 5;
    });
  }
  void decSitDif() {
    setState(() {
      if(sitDifficulty > 0) {
        sitDifficulty -= 1;
      }
    });
  }

  void incStandDif() {
    setState(() {
      standDifficulty = standDifficulty < 5 ? standDifficulty + 1 : 5;
    });
  }
  void decStandDif() {
    setState(() {
      if(standDifficulty > 0) {
        standDifficulty -= 1;
      }
    });
  }

  void incSleepDif() {
    setState(() {
      sleepDifficulty = sleepDifficulty < 5 ? sleepDifficulty + 1 : 5;
    });
  }
  void decSleepDif() {
    setState(() {
      if(sleepDifficulty > 0) {
        sleepDifficulty -= 1;
      }
    });
  }

  void incSocialDif() {
    setState(() {
      socialDifficulty = socialDifficulty < 5 ? socialDifficulty + 1 : 5;
    });
  }
  void decSocialDif() {
    setState(() {
      if(socialDifficulty > 0) {
        socialDifficulty -= 1;
      }
    });
  }

  void incTravelDif() {
    setState(() {
      travelDifficulty = travelDifficulty < 5 ? travelDifficulty + 1 : 5;
    });
  }
  void decTravelDif() {
    setState(() {
      if(travelDifficulty > 0) {
        travelDifficulty -= 1;
      }
    });
  }

  void incEmployHomeDif() {
    setState(() {
      employHomeDifficulty = employHomeDifficulty < 5 ? employHomeDifficulty + 1 : 5;
    });
  }
  void decEmployHomeDif() {
    setState(() {
      if(employHomeDifficulty > 0) {
        employHomeDifficulty -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Total: $total'),
            const Expanded(child: SizedBox()),
            TextButton(
              onPressed: getTotal,
              child: const Text('Calculate Total'),
            ),
            TextButton(
              onPressed: resetTotal,
              child: const Text('Reset'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Pain Intensity: '),
            const Expanded(child: SizedBox()),
            Text(' $painIntensity '),
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
            const Text('Personal Care Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $careDifficulty '),
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
            const Text('Lifting Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $liftDifficulty '),
            DecreaseButton(
              onPressed: decLiftDif,
              ),
            IncreaseButton(
              onPressed: incLiftDif,
              ),
          ],
        ),
        Row(
          children: [
            const Text('Walking Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $walkDifficulty '),
            DecreaseButton(
              onPressed: decWalkDif,
              ),
            IncreaseButton(
              onPressed: incWalkDif,
              ),
          ],
        ),
        
        Row(
          children: [
            const Text('Sitting Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $sitDifficulty '),
            DecreaseButton(
              onPressed: decSitDif,
              ),
            IncreaseButton(
              onPressed: incSitDif,
              ),
          ],
        ),

        Row(
          children: [
            const Text('Standing Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $standDifficulty '),
            DecreaseButton(
              onPressed: decStandDif,
              ),
            IncreaseButton(
              onPressed: incStandDif,
              ),
          ],
        ),

        Row(
          children: [
            const Text('Sleeping Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $sleepDifficulty '),
            DecreaseButton(
              onPressed: decSleepDif,
              ),
            IncreaseButton(
              onPressed: incSleepDif,
              ),
          ],
        ),

        Row(
          children: [
            const Text('Social Life Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $socialDifficulty '),
            DecreaseButton(
              onPressed: decSocialDif,
              ),
            IncreaseButton(
              onPressed: incSocialDif,
              ),
          ],
        ),

        Row(
          children: [
            const Text('Travelling Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $travelDifficulty '),
            DecreaseButton(
              onPressed: decTravelDif,
              ),
            IncreaseButton(
              onPressed: incTravelDif,
              ),
          ],
        ),
        Row(
          children: [
            const Text('Employment/Homemaking Difficulty: '),
            const Expanded(child: SizedBox()),
            Text(' $employHomeDifficulty '),
            DecreaseButton(
              onPressed: decEmployHomeDif,
              ),
            IncreaseButton(
              onPressed: incEmployHomeDif,
              ),
          ],
        ),
      ],
    );
  }
}

class FormWrapper extends StatelessWidget {
  const FormWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: ResponseForm(),
    );
  }
}