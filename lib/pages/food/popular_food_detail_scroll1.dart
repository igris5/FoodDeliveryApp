 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/utilites/dimension.dart';
import 'package:foodapp2/widgets/app_column.dart';
import 'package:foodapp2/widgets/app_icon.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../controllers/popular_product_controler.dart';
import '../../utilites/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expanadable_text_widget.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail1 extends StatelessWidget {
  


   const PopularFoodDetail1({Key? key,}) : super(key: key);

   @override
   Widget build(BuildContext context) {
    Get.find<PopularProductController>().initProduct();

     return Scaffold(
       backgroundColor: Colors.white,
       body: Stack(
         children: [
           //background image
           Positioned(
             left: 0,
               right: 0,

               child: Container(
                 width: double.maxFinite,
                 height: Dimensions.popularFoodImgSize,
                 decoration: const BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage('https://images.pexels.com/photos/1352296/pexels-photo-1352296.jpeg?auto=compress&cs=tinysrgb&w=600'),

                   )
                 ),

           )),
           //icon widget
           Positioned(
             top: Dimensions.height45,
             left: Dimensions.width20,
               right: Dimensions.width20,

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   const AppIcon(icon: Icons.arrow_back_ios),
                   const AppIcon(icon: Icons.shopping_cart_outlined),
                 ],

           )),
           //introduction
           Positioned(
               left: 0,
               right: 0,
               bottom: 0,
               top: Dimensions.popularFoodImgSize-20,

               child: Container(

                 padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(Dimensions.radius20),
                     topLeft: Radius.circular(Dimensions.radius20),
                   ),
                   color: Colors.white,
                 ),
                 child:  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     AppColumn(text: 'Desert Bakery'),
                     SizedBox(height: Dimensions.height20,),
                     BigText(text: "Introduce"),
                     SizedBox(height: Dimensions.height20,),
                     const Expanded(
                       child: SingleChildScrollView(
                           child: ExpandableTextWidget(text: "What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices. When it comes to making biryani rice, basmati rice is typically the go-to option; however, some cooks prefer to use other grains, such as jeerakasala or seeraga samba.Simply put, biryani is a spiced mix of meat and rice, traditionally cooked over an open fire in a leather pot. It is combined in different ways with a variety of components to create a number of highly tasty and unique flavor combinations. ")),
                     ),
                     

                   ],
                 ),

           )),
           //show more wla text idhr h

         ],
       ),
       bottomNavigationBar: GetBuilder<PopularProductController>(builder:(popularProduct){
        return Container(

         height: Dimensions.bottomHeightBar,
         padding: EdgeInsets.only(top: Dimensions.height30, bottom: Dimensions.height30, right: Dimensions.width20,left: Dimensions.width20),
         decoration: BoxDecoration(
           color: AppColors.buttonBackgroundColor,

           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(Dimensions.radius20*2),
             topRight: Radius.circular(Dimensions.radius20*2),
           )
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [


             Container(
               padding:EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20) ,

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(Dimensions.radius20),
                 color:  Colors.white,
               ),
               child: Row(
                 children: [
                   GestureDetector(
                    onTap: () {
                      popularProduct.setQuantity(false);
                    },
                    child: Icon(Icons.remove,color: AppColors.signColor,)),
                   SizedBox(width: Dimensions.width10/2,),
                   BigText(text: popularProduct.quantity.toString()),
                   SizedBox(width: Dimensions.width10/2,),
                   GestureDetector(
                    onTap: () {
                      popularProduct.setQuantity(true);
                    },
                    child: Icon(Icons.add , color:AppColors.signColor,))
                 ],
               ),
             ),
             Container(
               padding:EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20) ,

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(Dimensions.radius20),
                 color:  AppColors.mainColor,
               ),
               child: Row(
                 children: [


                   BigText(text: "\$0.08 Add to cart",color: Colors.white,),


                 ],
               ),
             ),
           ],
         ),
       );
       })
     );
   }
 }
