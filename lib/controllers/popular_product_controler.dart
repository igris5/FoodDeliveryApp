
import 'dart:convert';

import 'package:foodapp2/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../models/products_model.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic>_popularProductList=[];
  List<dynamic> get popularProductList =>_popularProductList;

   int _quantity=0;
   int get quantity=>_quantity;
   int _inCartItems=0;
   int get inCartItems=>_inCartItems+_quantity;

  Future<void> getPopularProductList()async {
   Response response=await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
     print("got products");

     _popularProductList=[];
     _popularProductList.addAll(Product.fromJson(response.body).products);
     //_popularProductList.addAll(Product.fromJson(json.decode(response.body)).products);
     //print(_popularProductList);



     update();

   }else{



   }
  }


  void setQuantity(bool isIncrement){
    if(isIncrement){
      print('increment');
      _quantity= checkQuantity(_quantity+1);

    }
    else{
      _quantity= checkQuantity(_quantity-1);

    }
    update();
  } 
  int checkQuantity(int quantity){
    if(quantity<0){
      Get.snackbar('Item count', 'You cant reduce more',
      );
      return 0;
    }
    else if(quantity>20){
      return 20;
    }
    else{
      return quantity;
    }
  }

  void initProduct(){
    _quantity=0;
    _inCartItems=0;
  }


}