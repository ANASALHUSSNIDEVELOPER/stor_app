import 'package:story_app/helper/api.dart';
import 'package:story_app/models/prodects_model.dart';

class UpdateProdects{
  Future<ProdectsModel> updateProdect({
  required  String title , 
  required  String price , 
  required  String desc,
  required  String image , 
  required  String category , 

  })async{
  Map<String,dynamic> data = await Api().put(url:' https://fakestoreapi.com/products/:id',
    body: {
            'title':title,
            'price':price,
            'description':desc , 
            'image':image , 
            'category':category , 
    })  ;
    return ProdectsModel.fromJson(data) ; 
  }
}