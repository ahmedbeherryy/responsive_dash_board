import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';


class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

     double width=MediaQuery.of(context).size.width;
     print('width is=====================================================$width');
    return width >= SizeConfig.desktop && width <1400 ? const Expanded(child: Padding(
      padding: EdgeInsets.all(16),
      child: DetailedIncomeChart(),
    )):
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex:2,child: IncomDetails()),
      ],
    );
  }
}
