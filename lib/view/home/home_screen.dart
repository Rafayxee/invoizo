import 'package:flutter/material.dart';
import 'package:invoizo/view/Invoice/invoice_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InvoiceView(),
            ));
      }),
      appBar: AppBar(
        title: const Text("Invoice"),
        centerTitle: true,
      ),
      body: Scaffold(
        body: Column(),
      ),
    );
  }
}
