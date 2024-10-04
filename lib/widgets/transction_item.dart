import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionModel});

  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(transctionModel.title,style: AppStyles.styleSemiBold16(context),),
        subtitle: Text(transctionModel.date,style: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),),
        trailing: Text(transctionModel.amount,style: AppStyles.styleSemiBold20(context).copyWith(
          color: transctionModel.isWithdrawal ?const Color(0xffF3735E):const Color(0xff7CD87A),
        ),),


      ),
    );
  }
}
