import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result extends StatefulWidget {
  final String gender;
   var result; // Use double for decimal precision
  final int age;

  BMI_Result({required this.result, required this.age, required this.gender});

  @override
  State<BMI_Result> createState() => _BMI_ResultState();
}

class _BMI_ResultState extends State<BMI_Result> {
  @override
  Widget build(BuildContext context) {
    // Use a contrasting color palette for background and text
    Color textColor = Colors.white;
    Color bgColor = Color(0xFF242427); // Adjust brightness if needed

    // Increase font sizes and apply spacing
    double fontSize = 28; // Adjust as needed
    double spacing = 20; // Adjust as needed

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFEC244F), // Consider a more accessible color
        title: Text(
          "BMI RESULT",
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold, // Adjust weight
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Align text
          children: [
            // Consider using an icon for gender
            Image.asset("images/BMI.png",scale: 2,),
            SizedBox(height: 50,),
            Text(
              "Gender: ${widget.gender}",
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.normal, // Adjust weight
              ),
            ),
            SizedBox(height: spacing), // Add vertical spacing
            // Consider highlighting result based on BMI range
            Text(
              "Result: ${widget.result}", // Show one decimal place
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold, // Adjust weight
              ),
            ),
            SizedBox(height: spacing),
            Text(
              "Age: ${widget.age}",
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.normal, // Adjust weight
              ),
            ),
            SizedBox(height: spacing), // Add vertical spacing
            // Add a call to action button (e.g., learn more, calculate again)
            ElevatedButton(
              onPressed: () {
                // Implement the button's action
              },
              child: Text('Next Step',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),), // Customize text
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFEC244F)),
                fixedSize: MaterialStateProperty.all(
                    Size(150, 50)), // Set the desired width and height
              ),
            ),
          ],
        ),
      ),
    );
  }
}
