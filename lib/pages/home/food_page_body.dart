

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:foodapp2/pages/food/popular_food_deatil5.dart';
import 'package:foodapp2/pages/food/popular_food_detail.dart';
import 'package:foodapp2/pages/food/popular_food_detail2.dart';
import 'package:foodapp2/pages/food/popular_food_detail3.dart';
import 'package:foodapp2/pages/food/popular_food_detail4.dart';
import 'package:foodapp2/pages/food/popular_food_detail_scroll1.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:foodapp2/widgets/app_column.dart';
import 'package:foodapp2/widgets/big_text.dart';
import 'package:foodapp2/widgets/icon_and_text_widget.dart';
import 'package:foodapp2/widgets/small_text.dart';

import '../../utilites/dimension.dart';


class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController= PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double scaleFactor=0.8;
  double height=Dimensions.pageViewContainer;//setting up the values of page

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
     setState(() {
       _currPageValue = pageController.page!;
     });

    });
  }
  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //SLIDER SECTION
      Container(
      //color: Colors.red,
      height: Dimensions.pageView,


      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context,position){
            return _buildPageItem(position);
          }),
    ),

//        DOT SECTION
        new DotsIndicator(
        dotsCount: 5,

        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
         activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
        //POPULAR TEXT SECTION
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                  child: BigText(text: ".",color: Colors.black26,)),
              SizedBox(width: Dimensions.width10,),
              Container(margin: const EdgeInsets.only(bottom: 2),
                  child: SmallText(text: "Food Pairing")),
            ],
          ),

        ),
        //LIST OF FOOD AND IMAGES


          ListView.builder (
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20, bottom: Dimensions.height10),
                  child: Row(
                    children: [
                      // IMAGE IN THE ROW
                      GestureDetector(
                         onTap: () {
                index==0?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail(),))
                :index==1?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail1(),))
                :index==2?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail2(),))
                :index==3?
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail3(),))
                :index==4?
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail4(),))
                :  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail5(),));
              },
                        child: Container(
                          width:Dimensions.ListViewImgSize,
                          height: Dimensions.ListViewImgSize ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Dimensions.radius20),
                            color: Colors.white38,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: index==0?const NetworkImage('https://images.pexels.com/photos/1410235/pexels-photo-1410235.jpeg?auto=compress&cs=tinysrgb&w=400'):
                                  index==1?
                              const NetworkImage('https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==2?const NetworkImage('https://images.pexels.com/photos/16270212/pexels-photo-16270212/free-photo-of-fries-meat-and-onion.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==3?const NetworkImage('https://images.pexels.com/photos/16342421/pexels-photo-16342421/free-photo-of-sweet-cake-on-tray.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==4?const NetworkImage('https://images.pexels.com/photos/16269718/pexels-photo-16269718/free-photo-of-delicious-breakfast-with-scrambled-eggs-arugula-salad-and-toasts.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==5?const NetworkImage('https://images.pexels.com/photos/16269805/pexels-photo-16269805/free-photo-of-food-with-fruit-on-plate.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==6?const NetworkImage('https://images.pexels.com/photos/16266742/pexels-photo-16266742/free-photo-of-hands-holding-pasta-with-chopsticks.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==7?const NetworkImage('https://images.pexels.com/photos/16272685/pexels-photo-16272685/free-photo-of-food-on-plate.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              index==8?const NetworkImage('https://images.pexels.com/photos/16272686/pexels-photo-16272686/free-photo-of-delicious-food-with-cutlery-on-table.jpeg?auto=compress&cs=tinysrgb&w=600'):
                              const NetworkImage('https://images.pexels.com/photos/16263214/pexels-photo-16263214/free-photo-of-close-up-of-woman-holding-a-fork-over-the-pasta-dish.jpeg?auto=compress&cs=tinysrgb&w=600'),
                            ),
                      
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: Dimensions.ListViewTextContSize,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(Dimensions.radius20),
                                bottomRight: Radius.circular(Dimensions.radius20)
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text:index==0? "Nutritious fruit meal in the china":
                                index==1?"Food Meal Below 230":
                                index==2?"Meal With Combo Offer":
                                index==3?"SaberMati Specials":
                                index==4?"HUNGER BITES":
                                index==5?"Eaton Offer":
                                index==6?"Special combo Offer":
                                index==7?"Meal With Extra 20% off":
                                index==8?"Meal With Combo Offer":
                                "Combo offer with 60% off"),
                                SizedBox(height: Dimensions.height10,),
                                SmallText(text: "With Chinese Characteristics"),
                                SizedBox(height: Dimensions.height10,),
                                Row(
                                  children: [
                                    IconAndTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: index==0?"Normal":
                                              index==1?"Intmed":
                                                  "Medium"
                                              ,

                                        iconColor: AppColors.iconColor1),
                                    const SizedBox(width: 11,),
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.7km",

                                        iconColor: AppColors.mainColor),
                                    const SizedBox(width: 11,),
                                    IconAndTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "37min",

                                        iconColor: AppColors.iconColor2),//AppColors.iconColor1

                                  ],
                                )
                              ],
                            ),
                          ),

                        ),
                      )
                    ],
                  ),

                );


              }),

      ],
    );
  }
  Widget _buildPageItem(int index){    //for page up and down

    Matrix4 matrix = new Matrix4.identity();
    if(index== _currPageValue.floor()){
      var currScale=1-(_currPageValue-index)*(1-scaleFactor);
      var currTrans=height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if(index== _currPageValue.floor()+1){
      var currScale= scaleFactor+(_currPageValue-index+1)*(1-scaleFactor);
      var currTrans=height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index== _currPageValue.floor()-1){
      var currScale=1-(_currPageValue-index)*(1-scaleFactor);
      var currTrans=height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else{
      var currScale=0.8;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, height*(1-currScale)/2, 1);

    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [


             
            GestureDetector(
              onTap: () {
                index==0?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail(),))
                :index==1?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail1(),))
                :index==2?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail2(),))
                :index==3?
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail3(),))
                :index==4?
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail4(),))
                :  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const PopularFoodDetail5(),));
              },
              
              child:Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width10, right: Dimensions.width10),
              //space between to blocks
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                color: index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),

                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:index==0?

                  const NetworkImage(
                      'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600'):index==1?
                  const NetworkImage('https://images.pexels.com/photos/1352296/pexels-photo-1352296.jpeg?auto=compress&cs=tinysrgb&w=600'):index==3?
                  const NetworkImage('https://images.pexels.com/photos/33406/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600'):index==2?
                  const NetworkImage('https://images.pexels.com/photos/16423838/pexels-photo-16423838/free-photo-of-roasted-chicken-with-fries-and-salad.jpeg?auto=compress&cs=tinysrgb&w=600'):index==4?
                  const NetworkImage('https://images.pexels.com/photos/2015191/pexels-photo-2015191.jpeg?auto=compress&cs=tinysrgb&w=600'):
                      const NetworkImage('https://images.pexels.com/photos/6605207/pexels-photo-6605207.jpeg?auto=compress&cs=tinysrgb&w=600'),

                ),
              ),
            ),),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.pageViewTextContainer,
                margin: EdgeInsets.only(left: Dimensions.width30,
                    right: Dimensions.width30,
                    bottom: Dimensions.height30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow( //box shadow ke lie
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5,
                        offset: Offset(0, 5),
                      )
                    ]

                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height15, right: 20, left: 20),
                  child: index == 0 ? const AppColumn(text: "Chinese side") :
                  index == 1 ?const AppColumn(text: "Dessert Bakery"):
                  index == 2 ?const AppColumn(text: "Rangrezza "):
                  index == 3 ?const AppColumn(text: "Hunger Bite"):
                  const AppColumn(text: "EatON Rolls"),
                ),

              ),
            ),

        ],

      ),
    );
  }
}