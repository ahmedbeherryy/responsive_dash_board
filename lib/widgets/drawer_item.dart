import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_models.dart';
import 'active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModels, required this.isActive});

  final DrawerItemModels drawerItemModels;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?ActiveDrawerItem(drawerItemModels: drawerItemModels)
        : InActiveDrawerItem(drawerItemModels: drawerItemModels);
  }
}
