import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenssess_item.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});


  @override
  State<AllExpensessItemListView> createState() => _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final  items = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: '\$20.129'),
    const AllExpensessItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2024',
      price: '\$20.129',
    ),
    const AllExpensessItemModel(
      image: Assets.imagesExpenses,
      title: 'Expensess',
      date: 'April 2024',
      price: '\$20.129',
    ),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
    child: GestureDetector(
    onTap: (){
      updateIndex(0);
    },
    child: AllExpenssessItem(itemModel: items[0],
    isSelected: selectedIndex == 0,),
    ),
    ),
        const SizedBox(width: 8,),
        Expanded(
    child: GestureDetector(
    onTap: (){
      updateIndex(1);
    },
    child: AllExpenssessItem(itemModel: items[1],
    isSelected: selectedIndex == 1,),
    ),
    ),
        const SizedBox(width: 8,),
        Expanded(
    child: GestureDetector(
    onTap: (){
      updateIndex(2);
    },
    child: AllExpenssessItem(itemModel: items[2],
    isSelected: selectedIndex == 2,),
    ),
    ),
      ],
    );
    return Row(
     // children:items.map((e)=> AllExpenssessItem(itemModel: e)).toList(),
      children: items.asMap().entries.map((e){
        int index =e.key;
        var item =e.value;
        return Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(index);
            },
            child: Padding(
              padding:  EdgeInsets.symmetric( horizontal: index ==1 ? 12 : 0),
              child: AllExpenssessItem(itemModel: item,
                isSelected: selectedIndex == index,),
            ),
          ),
        );
      }).toList(),

    );
  }
  void updateIndex(int index) {
    setState(() {
        selectedIndex =index;
    });
  }

}

