import 'package:flutter/material.dart';
import 'package:invoizo/widgets/ktext_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Business"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(height: 10),
              const Text('Business Logo'),
              const SizedBox(height: 20),
              KTextField(
                controller: TextEditingController(),
                hintText: 'Name',
                title: 'Business Name',
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              KTextField(
                controller: TextEditingController(),
                hintText: ' Owner Name',
                title: 'Business Owner Name',
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              KTextField(
                controller: TextEditingController(),
                hintText: ' Number',
                title: 'Business Number',
                maxLines: 1,
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
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
                hintText: 'abc.com',
                title: 'Website',
                maxLines: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
