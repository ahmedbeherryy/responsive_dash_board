import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/items_details_model.dart';
import 'item_details.dart';

class IncomDetails extends StatelessWidget {
  const IncomDetails({super.key});

  static const items =[
    ItemsDetailsModel(color: Color(0xff208BC7), title: 'Design Service', value: '%40'),
    ItemsDetailsModel(color: Color(0xff4DB7F2), title: 'Design Product', value: '%25'),
    ItemsDetailsModel(color: Color(0xff064060), title: 'Design royal', value: '%20'),
    ItemsDetailsModel(color: Color(0xffE2DECD), title: 'Other', value: '%22'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
      items.map((e) => ItemDetails(itemsDetailsModel: e),).toList()
      );

    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return ItemDetails(itemsDetailsModel: items[index]);
    },);
  }
}
