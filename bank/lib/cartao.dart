import 'package:flutter/material.dart';
import 'package:flutter_application_1/novocartao.dart';

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
          children: [
          
           Text("Vale Alimentação", style: TextStyle(fontSize: 20)),
           Image.asset('../lib/assets/vr-card.png', width: 200, height: 200),

           Text("Débito ou Crédito", style: TextStyle(fontSize: 20)),
           Image.asset('../lib/assets/credit-card.png', width: 260, height: 300),

           Text("Inserir novo cartão", style: TextStyle(fontSize: 20)),
           TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255,233,219,243)
            ),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>NovoCartao()));
            }, child: Text("Novo cartão"))
           
          ]
        )
      )
    );
  }
}