import 'package:flutter/material.dart';
import 'package:flutter_application_1/boleto.dart';
import 'package:flutter_application_1/cartao.dart';
import 'package:flutter_application_1/pix.dart';

class Pagamento extends StatelessWidget {
  const Pagamento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F6FA),
      appBar: AppBar(
        title: Text("CrediTech", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.payment, size: 80, color: Colors.blue),
           SizedBox(height: 20),
           Text("Formas de Pagamento", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
           SizedBox(height: 10),
           Text("Escolha como deseja pagar", style: TextStyle(color: Colors.grey, fontSize: 16)),
           SizedBox(height: 40),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(Icons.credit_card, color: Colors.blue),
                title: Text("Cartão"),
                subtitle: Text("Pagar com cartão"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Cartao()),
                  );
                },
              ),
            ),

           SizedBox(height: 15),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(Icons.pix, color: Colors.blue),
                title: Text("Pix"),
                subtitle: Text("Pagamento instantâneo"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Pix()),

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}