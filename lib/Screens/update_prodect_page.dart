import 'package:flutter/material.dart';

class UpdateProdectPage extends StatelessWidget {
  const UpdateProdectPage({super.key});
  static String id = 'update prodect' ; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('Update Prodect' , 
        style: TextStyle(
          color:Colors.black , 
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0.0 ,
        centerTitle: true,
      ),
    );
  }
}