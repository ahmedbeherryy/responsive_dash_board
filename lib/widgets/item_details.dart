import 'package:flutter/material.dart';

import '../models/items_details_model.dart';
import '../utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key,required this.itemsDetailsModel});

  final ItemsDetailsModel itemsDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
          color: itemsDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemsDetailsModel.title,
        style:AppStyles.styleRegular16(context),
      ),
      trailing:  Text(itemsDetailsModel.value,
        style: AppStyles.styleMedium16(context),),
    );
  }
}
