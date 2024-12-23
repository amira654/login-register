import 'package:flutter/material.dart';

import '../../../../cores/style/BMI_list.dart';
import '../../../../cores/style/BMI_strings.dart';
import '../../../../cores/widgets/custom_textField.dart';

class BMIScreen extends StatefulWidget {
  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  double? bmi;
  String? status;

  void calculateBMI() {
    final heightText = bmiFields[0].controller?.text;
    final weightText = bmiFields[1].controller?.text;

    if (heightText!.isEmpty || weightText!.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both height and weight')),
      );
      return;
    }

    final height = double.tryParse(heightText!);
    final weight = double.tryParse(weightText!);

    if (height == null || weight == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid input! Please enter valid numbers')),
      );
      return;
    }

    final heightInMeters = height / 100;
    bmi = weight / (heightInMeters * heightInMeters);

    if (bmi! < 18.5) {
      status = "Underweight";
    } else if (bmi! >= 18.5 && bmi! < 24.9) {
      status = "Normal weight";
    } else if (bmi! >= 25 && bmi! < 29.9) {
      status = "Overweight";
    } else {
      status = "Obese";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              BMIString.welcome,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: bmiFields.length,
                itemBuilder: (context, index) {
                  final bmiField = bmiFields[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: CustomTextField(
                      label: bmiField.label,
                      hint: bmiField.hint,
                      prefix: bmiField.prefix,
                      controller: bmiField.controller,
                      keyboard: bmiField.keyboard,
                      validator: bmiField.validator,

                    ),
                  );
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: calculateBMI,
                child: Text("Calculate BMI"),
              ),
            ),
            SizedBox(height: 20),
            if (bmi != null && status != null)
              Center(
                child: Column(
                  children: [
                    Text(
                      "Your BMI: ${bmi!.toStringAsFixed(1)}",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Status: $status",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
