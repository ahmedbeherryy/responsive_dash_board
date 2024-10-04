import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(children: [
          Expanded(child: TitleTextField(title: "Custom name", hint: 'type Custom name')),
          SizedBox(width: 16,),
          Expanded(child: TitleTextField(title: "Custom Email", hint: 'type Custom email')),

        ],),
        SizedBox(height: 12,),
        Row(children: [
          Expanded(child: TitleTextField(title: "Item name", hint: 'type Custom name')),
          SizedBox(width: 16,),
          Expanded(child: TitleTextField(title: "Item Email", hint: 'USD')),


        ],),

        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomButton(
              textColor: Color(0xff4DB7F2),
              backgroundColor: Colors.transparent,)),
            SizedBox(width: 24,),
            Expanded(child: CustomButton()),


          ],
        )
      ],
    );
  }
}
