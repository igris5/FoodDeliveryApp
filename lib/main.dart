import 'package:flutter/material.dart';
import 'package:foodapp2/front/screens/first_screen.dart';
import 'package:foodapp2/pages/food/popular_food_detail.dart';
import 'package:foodapp2/pages/food/recommended_food_detail.dart';
import 'package:foodapp2/pages/home/food_page_body.dart';
import 'package:foodapp2/pages/home/main_food_page.dart';
import 'controllers/popular_product_controler.dart';
import 'helper/dependencies.dart' as dep;
import 'package:get/get.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Get.find<PopularProductController>().getPopularProductList();//To find CONTROLLER AND ITS METHOD
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:FirstScreen(), //MainFoodPage(),
    );
  }
}
