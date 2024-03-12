import 'package:flutter/material.dart';

import 'package:story_app/Screens/homePage.dart';
import 'package:story_app/Screens/update_prodect_page.dart';
void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id:(context)=> HomePage() , 
        UpdateProdectPage.id:(context)=>UpdateProdectPage() ,
      },
      initialRoute: HomePage.id,
    );
  }
}
