import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all%20expensess/custom_bg_container.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/latest_transactions.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransction(),
          Divider(
            height: 48,
          ),
          TitleTextField(hintText: 'Customer', title: 'Customer')
        ],
      ),
    );
  }
}
