import 'package:flutter/material.dart';
import 'package:invoizo/widgets/ktext_field.dart';

class ClientScreen extends StatelessWidget {
  const ClientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  KTextField(
                    controller: TextEditingController(),
                    hintText: 'Ahmed',
                    title: 'Client Name',
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  KTextField(
                    controller: TextEditingController(),
                    hintText: ' abc@gmail.com',
                    title: 'Email',
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  KTextField(
                    controller: TextEditingController(),
                    hintText: ' 123456789',
                    title: 'Phone Number',
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  KTextField(
                    controller: TextEditingController(),
                    hintText: 'RT y678',
                    title: 'Tax Number',
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  KTextField(
                    controller: TextEditingController(),
                    hintText: ' 123456789',
                    title: 'Phone Number',
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  KTextField(
                    controller: TextEditingController(),
                    hintText: 'abc.com',
                    title: 'Website',
                    maxLines: 1,
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text('Billing Address:'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  KTextField(
                    controller: TextEditingController(),
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
