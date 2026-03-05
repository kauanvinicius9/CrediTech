import 'package:flutter/material.dart';

class NovoCartao extends StatelessWidget {
  const NovoCartao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CrediTech", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),

              child: Column(
                children: [
                  Text("Cadastro de Cartão", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Nome no cartão",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 15),

                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Número do cartão",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 15),

                  TextField(
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: "Data de validade (MM/AA)",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 15),

                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "CVV",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),

                  SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "CPF do titular",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 15),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Data de nascimento",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 25),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    onPressed: () {},

                    child: Text("Cadastrar Cartão", style: TextStyle(color: Colors.white),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
