import 'package:flutter/material.dart';
import 'package:flutter_application_1/boleto.dart';
import 'package:flutter_application_1/pagamento.dart';

// Tela inicial
void main() {
  runApp(CrediTech());
}

class CrediTech extends StatelessWidget {
  const CrediTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Inicio());
  }
}

// Tela inicial
class Inicio extends StatelessWidget {
  const Inicio({super.key});

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
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Boas Vindas ao CrediTech", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30 )),
            Text("Clique aqui para acessar a tela de pagamento", style: TextStyle(color: const Color.fromARGB(255, 163, 163, 163))),
            Icon(Icons.arrow_downward),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255,233,219,243)
              ),
              onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Pagamento()));
            }, child: Text("Pagamentos")),

            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(255,233,219,243)
              ),
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Boleto()));
              }, child: Text("Boletos"))
            
          ],
        ),
      ),
    );
  }
}
