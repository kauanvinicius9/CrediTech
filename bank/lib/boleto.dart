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
            Text( "Pague seu boleto", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Image.asset('../lib/assets/qrcode.png', width: 200),
            SizedBox(height: 20),
            Text("Escaneie o QR Code para pagar", style: TextStyle(color: Colors.grey, fontSize: 16),
            
            ),
          ],
        ),
      ),
    );
  }
}
