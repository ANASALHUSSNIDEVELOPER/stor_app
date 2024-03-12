import 'dart:convert';

import 'package:story_app/helper/api.dart';
import 'package:story_app/models/prodects_model.dart';
import 'package:http/http.dart' as http;
class CategorsSrevices{
  Future<List<ProdectsModel>> getCategorsProdect({required String categorName})async{
    List<dynamic>data  = await Api().get(url: "https://fakestoreapi.com/products/category/${categorName}") ; 
    List<ProdectsModel> prodectList = [] ; 
    for (int i = 0; i < data.length; i++) {
      prodectList.add(ProdectsModel.fromJson(data[i])) ; 
    }
    return prodectList ; 
  }
}