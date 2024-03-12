class ProdectsModel{
  final int id;
  final String title ; 
  final double price;
  final String description ; 
  final String image;
  final RatingModel reting ; 
  ProdectsModel({
    required this.id , 
    required this.title , 
    required this.price , 
    required this.description , 
    required this.image , 
    required this.reting , 
  });
  factory ProdectsModel.fromJson(jsonData){
    return ProdectsModel(
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'] , 
        reting: RatingModel.fromJson(jsonData['reting']) , 
        ) ; 
  }
}
class RatingModel{
  final double rate;
  final int count;
  RatingModel({
    required this.rate ,
    required this.count , 
  }) ; 
  factory RatingModel.fromJson(jsonData){
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']) ; 
  }
}