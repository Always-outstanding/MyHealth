import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:my_health/core/function/check_internet.dart';
import 'package:http/http.dart' as http;
import 'StatusRequest.dart';

class Curd {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
   try {
      if (await checkInternet()){
      var response = await http.post(Uri.parse(linkurl),body: data);
      if(response.statusCode == 200||response.statusCode == 201){
          Map responsebody = jsonDecode(response.body);
           return Right(responsebody);
      }else{
        return const Left(StatusRequest.offlinefailure);
      }
    }else{
      return const Left(StatusRequest.offlinefailure);


    }} catch (_) {
      return const Left(StatusRequest.serverfailure);
    }
  }
}
