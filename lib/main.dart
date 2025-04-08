import 'package:flutter/material.dart';
import 'package:invoizo/view/Invoice/screens/bill_from_view.dart';
import 'package:provider/provider.dart';

import 'view_model/main_screen_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainScreenViewModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BillFromView(),
    );
  }
}
