import 'package:flutter/material.dart';
import 'package:story_app/Widgets/custom_card.dart';
import 'package:story_app/models/prodects_model.dart';
import 'package:story_app/services/get_all_prodects_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'New Trend',
          style:TextStyle(
            color:Colors.black , 
          ),
        ),
        actions: [
        IconButton(onPressed:(){
        }, icon: const Icon(Icons.calendar_view_month_sharp , color:Colors.black,) , )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16 , right: 16 , top: 65),
        child: FutureBuilder<List<ProdectsModel>>(builder:(context , snapShot){
          if(snapShot.hasData){
            print(snapShot.data);
            List<ProdectsModel> prodects = snapShot.data! ; 
            return GridView.builder(
              itemCount: prodects.length,
          clipBehavior:Clip.none,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2 , 
              childAspectRatio: 1.5,
              crossAxisSpacing: 10 , 
              mainAxisSpacing: 100 , 
            ),
            itemBuilder: (context , index)=> CustomCard(
              prodects: prodects[index],
            ) ,
            );
          }else{
            return Center(child: CircularProgressIndicator()) ; 
          }
        } ,future: AllProdectsServices().getAllProdects(),)
      )
    );
  }
}
