import 'package:flutter/material.dart';

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  String output = "";
  String oprand = "";
  double num1 = 0.0;
  double num2 = 0.0;
  String text = "";

  void buttonpressed(String txt) {
    if (txt == 'c') {
      output = "";
      oprand = "";
      num1 = 0.0;
      num2 = 0.0;
      text = "";
    } else if (txt == '+' || txt == '-' || txt == '/' || txt == '*') {
      num1 = double.parse(text);
      oprand = txt;
      text = "";
    } else if (txt == '=') {
      num2 = double.parse(text);
      if (oprand == "/") {
        output = (num1 / num2).toString();
      } else if (oprand == "*") {
        output = (num1 * num2).toString();
      } else if (oprand == "-") {
        output = (num1 - num2).toString();
      } else if (oprand == "+") {
        output = (num1 + num2).toString();
      }
      setState(() {
        text = output;
      });
    } else {
      setState(() {
        text += txt;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('calc'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(fontSize: 40),
            ),
            height: 250,
          ),
          SizedBox(
            width: 30,
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("7");
                      },
                      child: Text("7"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("8");
                      },
                      child: Text("8"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("9");
                      },
                      child: Text("9"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("/");
                      },
                      child: Text("/"))),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("4");
                      },
                      child: Text("4"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("5");
                      },
                      child: Text("5"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("6");
                      },
                      child: Text("6"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("*");
                      },
                      child: Text("*"))),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("1");
                      },
                      child: Text("1"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("2");
                      },
                      child: Text("2"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("3");
                      },
                      child: Text("3"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("-");
                      },
                      child: Text("-"))),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("c");
                      },
                      child: Text("c"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("0");
                      },
                      child: Text("0"))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("=");
                      },
                      child: Text("="))),
              SizedBox(
                width: 30,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        buttonpressed("+");
                      },
                      child: Text("+"))),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          Container(
            color: Colors.red,
            height: 210,
            alignment: Alignment.center,
            child: Text(
              'calculated',
              style: TextStyle(
                  color: const Color.fromARGB(255, 120, 54, 244), fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}