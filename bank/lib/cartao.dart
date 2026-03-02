import 'package:flutter/material.dart';

class Cartao extends StatelessWidget {
  const Cartao({super.key});

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
          spacing: -90,
          children: [
            
           Text("Vale Alimentação")
           Image.asset('../lib/assets/vr-card.png', width: 200, height: 200),

           Text("Cartão de Crédito")
           Image.asset('../lib/assets/credit-card.png', width: 260, height: 300),
            
          ]
        )
      )
    );
  }
}
