


import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dice Roller')),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceImage = 1;
  int rightDiceImage = 1;

  void rollLeftDice() {
    setState(() {
      leftDiceImage = Random().nextInt(6) + 1;
    });
  }

  void rollRightDice() {
    setState(() {
      rightDiceImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: rollLeftDice,
              child: Image.asset('images/dice$leftDiceImage.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: rollRightDice,
              child: Image.asset('images/dice$rightDiceImage.png'),
            ),
          ),
        ],
      ),
    );
  }
}







// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   return runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           title: Text('Dicee'),
//           backgroundColor: Colors.red,
//         ),
//         body: DicePage(),
//       ),
//     ),
//   );
// }
//
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftDiceImage=1;
//     var rightDiceImage=1;
//
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 final random = Random();
//                 leftDiceImage = random.nextInt(6) + 1;
//                 // print('i have clicked the left button');
//
//                 // Define the action to be performed when the button is pressed
//               },
//               child: Image.asset('images/dice$leftDiceImage.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 final random = Random();
//                 leftDiceImage = random.nextInt(6) + 1;
//
//                 // child: Image.asset('images/dice$leftDiceImage.png');
//                 // Define the action to be performed when the button is pressed
//               },
//               child: Image.asset('images/dice$leftDiceImage.png'),
//             ),
//           )
//
//         ],
//
//
//
//
//       ),
//     );
//   }
// }
