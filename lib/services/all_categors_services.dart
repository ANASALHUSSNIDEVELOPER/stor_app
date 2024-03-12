import 'dart:convert';

import 'package:story_app/helper/api.dart';
class CategorsSrevices{
  Future<List<dynamic>> getAllCategors()async{
    List<dynamic> data = await Api().get(url: "https://fakestoreapi.com/products/categories") ;  
    return data ; 
  }
}