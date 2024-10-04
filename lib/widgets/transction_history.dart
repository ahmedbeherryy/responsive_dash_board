import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transction_hisory_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const TransctionHistoryHeader(),
      const SizedBox(height: 20,),
      Text('13 April 2024',style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 16,),
        const TransctionHisoryListView()
    ],);
  }
}

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transction History',style: AppStyles.styleMedium16(context),),
        Text('See All',style: AppStyles.styleMedium16(context).copyWith(color:  const Color(0xff4EB7F2)),),
      ],
    );
  }
}
