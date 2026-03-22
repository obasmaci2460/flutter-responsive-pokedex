import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:poke_app/core/constants.dart';
import 'package:poke_app/models/pokemon.dart';

class PokeApi {

static Future<List<Pokemon>> getPokemenList () async{

final BaseOptions options=BaseOptions(baseUrl: AppConstants.url);

final Dio dio=Dio(options);

try {

    List<Pokemon> list=[];

    Response response=await dio.get("");

    if (response.statusCode==200) {
      var resultData=jsonDecode(response.data)['pokemon']; 

      if(resultData is List)
      {
        list=resultData.map(
          (e) => Pokemon.fromJson(e)
        ).toList();
      }

   
      return list;

    }


} on DioException catch (e) {
    return Future.error(e);
}





return [];


}



}

