import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/cart/paymeny_method.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../pages/home/main_food_page.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 206, 226, 206),
        leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
        title: Text('CheckOut', style: TextStyle(color: Colors.black,fontSize: 20)),
    ),

    body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        
        child: Column(children: [
          Container(
            color: Colors.black,
           
            height: 200,
            width: 500,
          
            child: Container(height: 160,
            
            decoration: BoxDecoration(
               color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.greenAccent)
             
            ),
            child: Image.network('https://i.pinimg.com/736x/7c/50/ce/7c50ce5ac4cf06709f24a7cbb87a3c38.jpg',fit: BoxFit.fill,),),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                color: Color(0xFFF1EFEF),
                child: Icon(Icons.home,color: AppColors.mainColor,),
              ),
              SizedBox(width: 10,),
               Container(
                height: 50,
                width: 50,
                color: Color(0xFFF1EFEF),
                child: Icon(Icons.shopping_bag_rounded,color: AppColors.mainColor,),
              ),
               SizedBox(width: 10,),
               Container(
                height: 50,
                width: 50,
                color: Color(0xFFF1EFEF),
                child: Icon(Icons.location_on_rounded, color: AppColors.mainColor,),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('Delivery Address',style: TextStyle(fontSize: 18),),
            ],
          ),
          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                            
                                decoration: InputDecoration(
                                  hintText: 'Address',
                                  labelText: 'Address',
                                  prefixIcon: Icon(
                                    Icons.message_rounded,
                                    color: Colors.green,
                                  ),
                                  errorStyle: TextStyle(fontSize: 18.0),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9.0))),
                                ),
                              ),
                            ),
    
                  SizedBox(height: 10,),
          Row(
            children: [
              Text('Person Name',style: TextStyle(fontSize: 18),),
            ],
          ),
          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                            
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                  labelText: 'Name',
                                  prefixIcon: Icon(
                                    Icons.person_outline_rounded,
                                    color: Colors.green,
                                  ),
                                  errorStyle: TextStyle(fontSize: 18.0),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9.0))),
                                ),
                              ),
                            ),
    
                 SizedBox(height: 10,),
          Row(
            children: [
              Text('Person No',style: TextStyle(fontSize: 18),),
            ],
          ),
          Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                            
                                decoration: InputDecoration(
                                  hintText: 'Phone No',
                                  labelText: 'Phone No',
                                  prefixIcon: Icon(
                                    Icons.phone_callback_rounded,
                                    color: Colors.green,
                                  ),
                                  errorStyle: TextStyle(fontSize: 18.0),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(9.0))),
                                ),
                              ),
                            ),         
    
                       SizedBox(height: 10,),


                       Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                primary: AppColors.mainColor,
                                 ),
                                child: Text(
                                  'Save Address',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                onPressed: () {
                                  
                                 Get.snackbar('Address Saved!', 'Updation has been made to your address');
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  MyApp(),));
                                  
                                },
                             
                              ),
                            
                            ),
                          ),
    
                            
                                        
    
    
         
        ],),
      ),
    )
    
    
    );
  }
}