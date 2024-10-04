import 'package:flutter/material.dart';

import 'all_expensess_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_card_and_transction_history_section.dart';


class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensessAndQuickInvoiceSection(),
          ),
          SizedBox(height: 24,),
          MyCardAndTransctionHistorySection(),
          SizedBox(height: 24,),
          IncomeSection(),
        ],
      ),
    );
  }
}
