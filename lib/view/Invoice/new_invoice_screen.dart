import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoizo/widgets/ktext_field.dart';

class NewInvoiceScreen extends StatelessWidget {
  const NewInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28.5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'New Invoice',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1C170D),
                      fontSize: 20.sp),
                ),
              ),
              SizedBox(height: 20.h),
              const KTextField(
                hintText: 'Recipient Name',
              ),
              SizedBox(height: 14.h),
              const KTextField(
                hintText: 'Recipient Email',
              ),
              SizedBox(height: 14.h),
              const KTextField(
                hintText: 'Invoice Number',
              ),
              SizedBox(height: 14.h),
              const KTextField(
                hintText: 'Date',
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Items',
                  style: GoogleFonts.inter(
                    color: const Color(0xFF1C170D),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              const KTextField(
                hintText: 'Item Name',
              ),
              SizedBox(height: 14.h),
              const KTextField(
                hintText: 'Description',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
