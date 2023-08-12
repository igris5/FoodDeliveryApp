import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:foodapp2/utilites/dimension.dart';
import 'package:foodapp2/widgets/app_icon.dart';
import 'package:foodapp2/widgets/big_text.dart';

import '../../widgets/expanadable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                AppIcon(icon:  Icons.clear),
                AppIcon(icon:  Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(


                child: Center(child: BigText(size: Dimensions.font26, text: 'Silver App Bar',)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                 decoration: BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(Dimensions.radius20),
                     topLeft: Radius.circular(Dimensions.radius20),
                   )
                 ),
              )
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(

              background: Image.network('https://images.pexels.com/photos/842571/pexels-photo-842571.jpeg?auto=compress&cs=tinysrgb&w=400',
              width: double.maxFinite,
                fit: BoxFit.cover,
               ),

            )
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(

                  child: ExpandableTextWidget(text:
                      "What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices.What is biryani made of? Any type of biryani consists of four main components: rice, meat, marinade, and spices."
                  ),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            )
          ),



        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //THIS CONTAINER FOR ADDING PRICE

          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20*2.5,
              right: Dimensions.width20*2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIcon(
                  size: Dimensions.iconsize24,
                    iconColor:Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.remove),

                BigText(size:Dimensions.font26,text: "\$ 12.88 X 0",color: AppColors.mainBlackColor,),




                AppIcon(
                    size: Dimensions.iconsize24,
                    iconColor:Colors.white,
                    backgroundColor:AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),


          //THIS CONTAINER FOR THE ADD TO THE CART

          Container(

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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  )
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
          ),
        ],
      ),

    );
  }
}
