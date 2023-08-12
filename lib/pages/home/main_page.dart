import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/pages/home/food_page_body.dart';
import 'package:foodapp2/widgets/small_text.dart';

import '../../utilites/colors.dart';
import '../../utilites/dimension.dart';
import '../../widgets/big_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child:Container(
                margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        BigText(text: "India", color: AppColors.mainColor,),//color: AppColors.mainColors
                        Row(
                          children: [
                            SmallText(text: "Prayagraj", color: AppColors.textColor,),
                            Icon(Icons.arrow_drop_down),
                          ],
                        )
                      ],
      
                    ),
                    Center(
                      child: Container(
                        width: Dimensions.height45,
                        height: Dimensions.height45,
                        child: Icon(Icons.search, color:Colors.white, size: Dimensions.iconsize24,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor,
      
      
                        ),
      
                      ),
                    ),
                    
                  ],
                ),
      
              ),
            ),
           FoodPageBody()
          ],
        ),
      ),

    );
  }
}