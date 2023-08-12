
import 'package:flutter/material.dart';
import 'package:foodapp2/container/separatoe.dart';
import 'package:foodapp2/pages/home/main_food_page.dart';
import 'package:foodapp2/pages/home/main_page.dart';
import 'package:foodapp2/utilites/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
         home: Home()
      );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? gender; //no radio button will be selected
  //String gender = "male"; //if you want to set default value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Payment Method",style: TextStyle(color: Colors.black),),
             leading: IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
             backgroundColor: Color.fromARGB(255, 206, 226, 206),
        ),
        body: Container( 
            padding: EdgeInsets.all(20),
            child: 
          Column(
            children: [
                
                Text('', style: TextStyle( 
                    fontSize: 18
                ),),

                Divider(),
                
                RadioListTile(
                    title: Container(height: 70,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.black12,
                          child: Image.network('https://i.pinimg.com/564x/9d/44/e1/9d44e15cfae6ca258540152ebf05093a.jpg',fit: BoxFit.fill,),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Paypal',style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                            SizedBox(height: 10,),
                            Text('3464*******7378',style: TextStyle(color: Colors.grey),),
                          ],
                        )
                      ],

                    ),
                    ),
                    value: "male", 
                    activeColor: AppColors.mainColor,
                    groupValue: gender, 
                    onChanged: (value){
                      setState(() {
                          gender = value.toString();
                      });
                    },
                ),

                RadioListTile(
                    title: Container(height: 70,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.black12,
                          child: Image.network('https://i.pinimg.com/564x/63/dd/d9/63ddd963a635a1cfe4e06ee149a8bbf9.jpg',fit: BoxFit.fill,),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Credit Card',style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                            SizedBox(height: 10,),
                            Text('348*******888',style: TextStyle(color: Colors.grey),),
                          ],
                        )
                      ],

                    ),
                    ),
                    activeColor: AppColors.mainColor,
                    value: "female", 
                    groupValue: gender, 
                    onChanged: (value){
                      setState(() {
                          gender = value.toString();
                      });
                    },
                ),

                RadioListTile(
                  activeColor: AppColors.mainColor,
                      title: Container(height: 70,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          color: Colors.black12,
                          child: Image.network('https://i.pinimg.com/564x/2e/cc/c5/2eccc5be2a9e92e7eac9c0536cb5d15f.jpg',fit: BoxFit.fill,),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Google Pay',style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w500),),
                            SizedBox(height: 10,),
                            Text('89***********53',style: TextStyle(color: Colors.grey),),
                          ],
                        )
                      ],

                    ),
                    ),
                      value: "other", 
                      groupValue: gender, 
                      onChanged: (value){
                        setState(() {
                            gender = value.toString();
                        });
                      },
                ),
                   Divider(),
                   SizedBox(height: 20,),

                   Container(
                    height: 70,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Color(0xFF98E698),
                    borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.remember_me_rounded,color: Colors.white,size: 30,),
                        SizedBox(width: 10,),
                        Text('Promo Code',style: TextStyle(fontSize: 20,color: Colors.white),),
                        SizedBox(width: 70,),
                        Container(
                          height: 50,
                          width: 110,
                          padding: EdgeInsets.only(top: 16,left: 10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColors.mainColor),
                          child: Text('Apply Coupon',style: TextStyle(color: Color.fromRGBO(207, 204, 204, 1)),),
                        ),
                        
                       
                      ],
                    ),
                   ),
                   SizedBox(height: 30,),
                    Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Transfer Amount',style: TextStyle(color: Color(0xFF8B8989)),),
                             Text('\$42',style: TextStyle(color: Color.fromRGBO(8, 8, 8, 1),fontWeight: FontWeight.w600,fontSize: 20),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Additional Cost',style: TextStyle(color: Color(0xFF8B8989)),),
                             Text('\$0.4',style: TextStyle(color: Color.fromRGBO(8, 8, 8, 1),fontWeight: FontWeight.w600,fontSize: 20),),
                          ],
                        ),
                        SizedBox(height: 15,),
                        MySeparator(height: 2,color: Color.fromARGB(255, 74, 73, 73),),
                         SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total',style: TextStyle(color: Color(0xFF8B8989)),),
                             Text('\$42.4',style: TextStyle(color: Color.fromRGBO(8, 8, 8, 1),fontWeight: FontWeight.w600,fontSize: 20),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        GestureDetector(
                          onTap: (() {
                            Get.snackbar('Payment Done Successfully!', 'Track Your Order');
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                  MainFoodPage(),));
                          }),
                          child: Container(
                           height: 50,
                           width: 200,
                           padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(color: AppColors.mainColor,
                           borderRadius: BorderRadius.circular(10)),
                           child: Row(
                           children: [
                          
                            SizedBox(width: 70,),
                            Text('Pay',style: TextStyle(fontSize: 20,color: Colors.white),),
                                               
                          
                          
                                               
                                              ],
                                            ),
                                           ),
                        ),
            ],
          ),
        ),
    );
  } 
}



// import 'package:flutter/cupertino.dart';

// class PaumentScreen extends StatefulWidget {
//   const PaumentScreen({super.key});

//   @override
//   State<PaumentScreen> createState() => _PaumentScreenState();
// }

// class _PaumentScreenState extends State<PaumentScreen> {
//   @override
//   Widget build(BuildContext context) {
 
//     return Container();
//   }
// }
 
 




