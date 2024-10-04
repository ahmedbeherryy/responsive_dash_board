
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_models.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';
import 'drwer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child:  const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: 'Lekan Okeowo',
                  subTitel: 'Demo@gmail.com'),
            ),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 8,)),

          DrawerItemsListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20,)),
                InActiveDrawerItem(drawerItemModels:
                DrawerItemModels(title: 'Seeting system', image: Assets.imagesSettings)),

                InActiveDrawerItem(drawerItemModels:
                DrawerItemModels(title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(height: 48,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
