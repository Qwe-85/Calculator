
import 'package:calculator/Compnents/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        userInput.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        answer.toString(),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MYButton(
                          title: 'AC',
                          onPress: () {
                            userInput = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '+/-',
                          onPress: () {
                            userInput += '+/-';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '%',
                          onPress: () {
                            userInput += '%';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '/',
                          color: Colors.orange,
                          onPress: () {
                            userInput += '/';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '7',
                          onPress: () {
                            userInput = userInput + '7';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '8',
                          onPress: () {
                            userInput = userInput + '8';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '0',
                          onPress: () {
                            userInput = userInput + '0';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: 'X',
                          color: Colors.orange,
                          onPress: () {
                            userInput += 'X';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '4',
                          onPress: () {
                            userInput = userInput + '4';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '5',
                          onPress: () {
                            userInput = userInput + '5';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '6',
                          onPress: () {
                            userInput = userInput + '6';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '-',
                          color: Colors.orange,
                          onPress: () {
                            userInput += '-';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '1',
                          onPress: () {
                            userInput = userInput + '1';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '2',
                          onPress: () {
                            userInput = userInput + '2';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '3',
                          onPress: () {
                            userInput = userInput + '3';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '+',
                          color: Colors.orange,
                          onPress: () {
                            userInput += '+';
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MYButton(
                          title: '0',
                          onPress: () {
                            userInput = userInput + '0';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: '.',
                          onPress: () {
                            userInput += '.';
                            setState(() {});
                          },
                        ),
                        MYButton(
                          title: 'DEL',
                          onPress: () {},
                        ),
                        MYButton(
                          title: '=',
                          color: Colors.orange,
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
     
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
