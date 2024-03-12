import 'package:flutter/material.dart';
import 'package:story_app/Screens/update_prodect_page.dart';
import 'package:story_app/models/prodects_model.dart';
class CustomCard extends StatelessWidget {
  CustomCard({
    required this.prodects , 
    super.key,
  });
  ProdectsModel prodects;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context, UpdateProdectPage.id) ; 
        
      },
      child: Stack(
        clipBehavior:Clip.none,
        children: [
          Container(
          //  height: 130,
          //  width: 220,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40 , 
                  color:Colors.grey , 
                  spreadRadius:0 , 
                  offset:Offset(10,10) , 
                ),
              ]
            ),
            child: Card(
             // color:Colors.red,
              elevation: 10,
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 16),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("${prodects.title.substring(0,6)}", style: const TextStyle(
                      color: Colors.grey , 
                    fontSize: 16),) , 
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                      Text(r"$""${prodects.price.toString()}",
                      style: const TextStyle(
                      fontSize: 16),
                      ) ,
                      const Icon(Icons.favorite , color:Colors.red,) , 
                      ],
                    )
                  ]
                  ),
              ),
            ),
          ),
          Positioned(
            right: 32,
            // bottom: 85,
            top: -60,
            child: Image.network(
              prodects.image,
              height: 100,
              width: 100,
              ),
          ),
        ],
      ),
    );
  }
}
