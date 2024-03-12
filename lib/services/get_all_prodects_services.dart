import 'dart:convert';

import 'package:http/http.dart';
import 'package:story_app/models/prodects_model.dart';
import 'package:story_app/helper/api.dart';
class AllProdectsServices{
  Future<List<ProdectsModel>> getAllProdects() async{
      List<dynamic>data = await Api().get(url: "https://fakestoreapi.com/products") ;  
      List<ProdectsModel> prodectsList = [] ;
      for(int i =0 ; i<data.length;i++){
      prodectsList.add(ProdectsModel.fromJson(data[i])) ; 
    }
      return prodectsList;
  }
}