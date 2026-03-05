import 'package:flutter/material.dart';
import 'package:flutter_application_1/boleto.dart';
import 'package:flutter_application_1/pagamento.dart';

void main() {
  runApp(const CrediTech());
}

class CrediTech extends StatelessWidget {
  const CrediTech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CrediTech",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      appBar: AppBar(
        title: const Text("CrediTech", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_balance, size: 80, color: Colors.blue),
              const SizedBox(height: 20),
              const Text("Bem-vindo(a) ao CrediTech", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("Escolha uma das opções abaixo", style: TextStyle(color: Colors.grey, fontSize: 16)),
              const SizedBox(height: 40),

              // Card de Pagamento
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: ListTile(
                  leading: const Icon(Icons.payment, color: Colors.blue),
                  title: const Text("Pagamentos"),
                  subtitle: const Text("Realizar pagamentos"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Pagamento(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 15),

              // Card de Boletos
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: ListTile(
                  leading: const Icon(Icons.receipt_long, color: Colors.blue),
                  title: const Text("Boletos"),
                  subtitle: const Text("Visualizar boletos"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Boleto()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
