import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/all%20expensess/custom_bg_container.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/latest_transactions.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/Middle%20section/quick%20invoice/quick_invoice_title_textfield.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceTitleTextfield()
        ],
      ),
    );
  }
}
