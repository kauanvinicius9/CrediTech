import 'package:flutter/material.dart';

class Boleto extends StatelessWidget {
  const Boleto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CrediTech", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('../lib/assets/qrcode.png')
          ],
        )
      )
    );
  }
}