import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';
import 'all_expensess.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       // SizedBox(height: 40),
        AllExpensess(),
        SizedBox(height: 24,),
        QuickInvoice(),
      ],
    );
  }
}
