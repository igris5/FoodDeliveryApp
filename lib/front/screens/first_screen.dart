
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/front/login/login.dart';
import 'package:foodapp2/front/screens/first_screen_2.dart';
import 'package:foodapp2/pages/home/food_page_body.dart';
import 'package:foodapp2/pages/home/main_food_page.dart';
import 'package:foodapp2/utilites/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 350,
          
          decoration: BoxDecoration(
           
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://i.pinimg.com/564x/a5/5e/95/a55e95ce76ac52ba66854148689050f5.jpg'))
          ),),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: 150,
           
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 55),
                      
                      
                      child: Text('Grab your Favourite dishes',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColor),),),
                    
                 
                  ],
                ),
                SizedBox(height: 4,),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 100),
                      
                      
                      child: Text('from your favorite',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColor),),),
                    
                 
                  ],
                ),
                SizedBox(height: 4,),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 95),
                      
                     
                      child: Text('Cafes & Restaurant',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColor),),),
                    
                 
                  ],
                ),
                SizedBox(height: 4,),
              ],
            ),
          ),
         
         DotsIndicator(
        dotsCount:3,
        decorator: DotsDecorator(color: Colors.greenAccent,
        activeColor: AppColors.mainColor),
        
      
        ),
         



          SizedBox(height: 20,),
          GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const FirstScreen2(),));
          },
         child: Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.mainColor,
           ),
           child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontSize: 20),)),
          ),
          ),

          SizedBox(height: 20,),

          OutlinedButton(
              onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>
                const Login(),));
                // Add your on pressed event here
              },
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text('              Skip              '),
            ),
        ],
      ),
    );
  }
}