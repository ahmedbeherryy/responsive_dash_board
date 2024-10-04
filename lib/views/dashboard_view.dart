import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});



  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey();



  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.of(context).size.width < SizeConfig.tablet ?AppBar(
        backgroundColor:const Color(0xffFAFAFA) ,
        elevation: 0,
        leading: IconButton(onPressed: (){
          scaffoldkey.currentState!.openDrawer();
        },icon: const Icon(Icons.menu),)
      ):null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer: MediaQuery.of(context).size.width <SizeConfig.tablet ?const CustomDrawer() :null,
      body: AdaptiveLayout(
        mobileLayout:(context)=>  const DashBoardMobileLayout() ,
        tabletLayout:(context)=>  const DashboardTabletLayout() ,
        desktopLayout:(context)=> const DashboardDesktopLayout() ,
      ),
    );
  }
}
