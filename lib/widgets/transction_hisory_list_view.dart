import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/widgets/transction_item.dart';

class TransctionHisoryListView extends StatelessWidget {
  const TransctionHisoryListView({super.key});

  static const item =[
    TransctionModel(title: 'Cash Withdrawal', date: '13 April,2024', amount: '\$20,129', isWithdrawal: true),
    TransctionModel(title: 'Leading Page Project', date: '13 April,2024', amount: '\$20,129', isWithdrawal: false),
    TransctionModel(title: 'Jun Mobile App Project', date: '13 April,2024', amount: '\$20,129', isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children:
      item.map((e) => TransctionItem(transctionModel: e),).toList()
      );

    return ListView.builder(
      itemCount: item.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
      return TransctionItem(transctionModel: item[index]);
    },);
  }
}
