import 'package:foodapp2/controllers/cart_controller.dart';
import 'package:foodapp2/controllers/popular_product_controler.dart';
import 'package:foodapp2/data/api/api_client.dart';
import 'package:foodapp2/data/repository/cart_repo.dart';
import 'package:foodapp2/data/repository/popular_product_repo.dart';
import 'package:foodapp2/utilites/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> init()async{
//FOR API CLIEN T
   Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));
//FOR REPOS
   Get.lazyPut(() =>CartRepo());
   Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
//CONTROLLERS
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo:Get.find()));
}