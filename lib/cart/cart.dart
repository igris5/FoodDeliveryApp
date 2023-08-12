import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodapp2/cart/checkout_page.dart';
import 'package:foodapp2/pages/home/main_food_page.dart';
import 'package:foodapp2/pages/home/main_page.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../controllers/popular_product_controler.dart';
import '../models/products_model.dart';
import '../utilites/dimension.dart';
import '../widgets/big_text.dart';

class CartScreen extends StatefulWidget {

  const CartScreen({Key? key,}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: GestureDetector(
          onTap: (() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const MainFoodPage(),));
          }),
          child: const Text("Shopping Cart",
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Column(
            children: [
              FavouriteCard(product: 'https://images.pexels.com/photos/33406/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600',press: (){},price: '\$24',title: 'Hunger Bite',description: 'Veg Biryani | 2 full Handi Chicken',),
              
               FavouriteCard(product: 'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=600', press: (){},price: '\$18',title: 'EatOn Rolls',description: '1 Shaurma Roll with extra cheese | 2 cold drinks',),
             
              //  FavouriteCard(product: 'https://images.pexels.com/photos/16270212/pexels-photo-16270212/free-photo-of-fries-meat-and-onion.jpeg?auto=compress&cs=tinysrgb&w=600', press: (){},price: '\$24',title: 'Rangreza',description: 'Veg Biryani | 2 full Handi Chicken',),
             
              //  FavouriteCard(product: 'https://images.pexels.com/photos/16272685/pexels-photo-16272685/free-photo-of-food-on-plate.jpeg?auto=compress&cs=tinysrgb&w=600', press: (){},price: '\$24',title: 'Rangreza',description: 'Veg Biryani | 2 full Handi Chicken',),
                SizedBox(height: 30,),
               
               
            
            ],
          ),
        )),
      ),
      bottomNavigationBar: Container(

         height: 90,
         padding: EdgeInsets.only(left: 30,right: 30),
         decoration: BoxDecoration(
           color: Color.fromARGB(255, 206, 226, 206),

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
                   
                   SizedBox(width: Dimensions.width10/2,),
                   
                    BigText(text: '\$42.0'),
                   SizedBox(width: Dimensions.width10/2,),
                  
                 ],
               ),
             ),
              GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const CheckOut(),));
          },
         child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          color: AppColors.mainColor,
           ),
           child: Center(child: Text('CheckOut',style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
          ),
           ],
         ),
       )
       );
    
  }
}

class FavouriteCard extends StatelessWidget {
   FavouriteCard({
    Key? key,
    required this.product,
    required this.press,
    required this.description,
    required this.price,
    required this.title,
  }) : super(key: key);
  final String product;
  final VoidCallback press;
  final title;
  final price;
  final description;

  
  int index=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Card(
        elevation: 20,
        child: InkWell(
          onTap: press,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8.0),
            decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
                borderRadius: BorderRadius.circular(15.0)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ClipRRect(
                     
                      borderRadius: BorderRadius.circular(20),
                      child: 
                        Image.network(
                          product,
                         height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color:Colors.red,
                        ),
                      ),
                      Text(
                        description,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                     color:Color.fromARGB(255, 209, 206, 206),
                                      borderRadius: BorderRadius.circular(10.0)),
                                 
                                  
                                    child: GestureDetector(
                                      onTap: () {
                                        
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                      ),
                                    ),
                                
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                               Text(
                               index.toString(),
                                style: TextStyle(
                                  color:Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              InkWell(
                                onTap: () {
                               
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color:Color.fromARGB(255, 209, 206, 206),
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}