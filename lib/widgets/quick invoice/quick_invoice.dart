import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/custom_bg_container.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/custom_text_field.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/latest_transactions.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [QuickInvoiceHeader(), LatestTransction(), CustomTextField()],
      ),
    );
  }
}
