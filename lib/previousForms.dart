import 'package:flutter/material.dart';
import 'package:form_app/model/questionnair.dart';

class PreviousForm extends StatelessWidget {
  const PreviousForm({super.key});
  
  @override
  Widget build(BuildContext context) {
    final Questionnair questionnair = Questionnair(name: "Test");
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(questionnair.name),
            const Expanded(
              child: SizedBox()
            ),
            Text(questionnair.painIntensity.toString())
          ],
          ),
        ),
    );
  }
}