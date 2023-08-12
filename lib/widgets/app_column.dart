import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/widgets/small_text.dart';

import '../utilites/colors.dart';
import '../utilites/dimension.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index)=>Icon(Icons.star,color: AppColors.mainColor,size: 15,))
            ),
            SizedBox(width: 10,),
            SmallText(text:  "4.5"),
            SizedBox(width: 10,),
            SmallText(text: '1237'),
            SizedBox(width: 10 ,),
            SmallText(text: "Comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",

                iconColor: AppColors.iconColor1),
            SizedBox(width: 20,),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",

                iconColor: AppColors.mainColor),
            SizedBox(width: 20,),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "37min",

                iconColor: AppColors.iconColor2),//AppColors.iconColor1

          ],
        )
      ],
    );
  }
}
