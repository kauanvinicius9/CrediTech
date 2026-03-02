import 'package:flutter/material.dart';

// Tela inicial
void main() {
  runApp(CrediTech());

}

class CrediTech extends StatelessWidget {
  const CrediTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio()
    );
  }
}

// Tela inicial
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
    );
  }
}
