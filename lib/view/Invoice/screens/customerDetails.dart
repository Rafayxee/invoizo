import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/ktext_field.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28.5),
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topLeft, child: Text('Customer Details')),
            SizedBox(height: 14.h),
            const KTextField(
              hintText: 'Name',
            ),
            SizedBox(height: 14.h),
            const KTextField(
              hintText: 'Email',
            ),
            SizedBox(height: 14.h),
            const KTextField(
              hintText: 'Phone',
            ),
            SizedBox(height: 14.h),
            const KTextField(
              textAlign: TextAlign.center,
              hintText: 'Address',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
