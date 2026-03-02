import 'package:flutter/material.dart';
import 'package:flutter_application_1/boleto.dart';
import 'package:flutter_application_1/cartao.dart';
import 'package:flutter_application_1/pix.dart';

class Pagamento extends StatelessWidget {
  const Pagamento({super.key});

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
          spacing: 30,
          children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255,233,219,243)
            ),
            onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Cartao()));
          }, child: Text("Cartão")),

          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255,233,219,243)
            ),
            onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Pix()));
          }, child: Text("Pix"))

        ],),
      ),
    );
  }
}