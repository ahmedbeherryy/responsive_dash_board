
import 'package:flutter/material.dart';

import '../models/drawer_item_models.dart';
import '../utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });



  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex =0;

  final List<DrawerItemModels> items=[
    const DrawerItemModels(title: 'Dashboard', image:Assets.imagesDashboard,),
    const DrawerItemModels(title: 'My Transaction', image:Assets.imagesMyTransctions,),
    const DrawerItemModels(title: 'Statistic', image:Assets.imagesStatistics,),
    const DrawerItemModels(title: 'Wallet Account', image:Assets.imagesWalletAccount,),
    const DrawerItemModels(title: 'My Investments', image:Assets.imagesMyInvestments,),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            if(activeIndex != index)
              {
                setState(() {
                  activeIndex=index;
                 // print(activeIndex);
                });
              }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(drawerItemModels: items[index],

              isActive: activeIndex == index,),
          ),
        );
      },);
  }
}
