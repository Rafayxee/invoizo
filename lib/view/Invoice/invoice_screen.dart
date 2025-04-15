import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(9)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invoice',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Created on ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.navigate_next_sharp,
                      size: 30,
                    ),
                  ],
                ),
                Text(
                  'Due on ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(9)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Bill From',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.navigate_next_sharp,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Bill To',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.navigate_next_sharp,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(9)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Shipping Details: ',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.navigate_next_sharp,
                      size: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
