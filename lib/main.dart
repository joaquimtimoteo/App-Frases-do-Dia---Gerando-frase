import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Frases do Dia App",
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    "Lorem ipsum dolor sit amet, consectetur adipiscing eli",
    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
  ];

  var _frasesGeradas =
      "Lorem ipsum dolor sit amet, consectetur adipiscing eli!";

  void _gerarFrages() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frasesGeradas = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Frases Do dia",
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.green),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _frasesGeradas,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
            TextButton(
              onPressed: _gerarFrages,
              child: Text(
                "Nova Frase",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
            )
          ],
        ),
      ),
    );
  }
}
