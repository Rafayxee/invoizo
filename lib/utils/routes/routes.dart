import 'package:flutter/material.dart';
import 'package:invoizo/utils/routes/routes_name.dart';
import 'package:invoizo/view/Invoice/invoice_screen.dart';
import 'package:invoizo/view/home/home_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.invoice:
        return MaterialPageRoute(
            builder: (BuildContext context) => const InvoiceScreen());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No route defined '),
              ),
            );
          },
        );
    }
  }
}
