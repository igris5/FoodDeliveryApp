import 'package:foodapp2/utilites/app_constants.dart';
import 'package:get/get.dart';




class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;

  late Map<String,String> _mainHeaders;

  ApiClient({required this.appBaseUrl}){
    allowAutoSignedCert = true;
    baseUrl=appBaseUrl;
    timeout= Duration(seconds:20);
    token ="";
    _mainHeaders={
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',

    };
  }
  Future<Response> getData(uri,) async{
    try{
      Response response = await get(uri);
       return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());

    }
  }

}