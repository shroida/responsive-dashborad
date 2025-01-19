import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transactions_model.dart';
import 'package:responsive_dashboard/utlis/app_styles.dart';

class TransactionsDetails extends StatelessWidget {
  const TransactionsDetails({
    super.key,
    required this.transactionsModel,
  });
  final TransactionsModel transactionsModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              transactionsModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: const Color(0xff064061)),
            ),
            Text(transactionsModel.date,
                style: AppStyles.styleRegular16(context).copyWith(
                  color: const Color(0xffaaaaaa),
                )),
          ],
        ),
        Text(
          transactionsModel.amount,
          style: AppStyles.styleSemiBold24(context)
              .copyWith(color: const Color(0xfff3735E)),
        ),
      ],
    );
  }
}
