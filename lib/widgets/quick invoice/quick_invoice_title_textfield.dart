import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/quick%20invoice/title_text_field.dart';

class QuickInvoiceTitleTextfield extends StatelessWidget {
  const QuickInvoiceTitleTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  hintText: 'Type customer name', title: 'Customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  hintText: 'Type customer Email', title: 'Customer Email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    hintText: 'Type customer name', title: 'Item name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  hintText: 'USD', title: 'Item amount'),
            ),
          ],
        ),
      ],
    );
  }
}
