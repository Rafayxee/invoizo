import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invoizo/widgets/ktext_field.dart';

class BillFromView extends StatefulWidget {
  const BillFromView({super.key});

  @override
  State<BillFromView> createState() => _BillFromViewState();
}

class _BillFromViewState extends State<BillFromView> {
  File? _imgFile;

  void takeSnapshot() async {
    final ImagePicker picker = ImagePicker();
    final XFile? img = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (img == null) return;
    setState(() {
      _imgFile = File(img.path); // convert it to a Dart:io file
    });
  }

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
              GestureDetector(
                onTap: () => takeSnapshot(),
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 50,
                  backgroundImage: (_imgFile == null)
                      ? const AssetImage('assets/person.png')
                      : FileImage(_imgFile!) as ImageProvider,
                ),
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
