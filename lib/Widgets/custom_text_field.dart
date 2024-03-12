import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.hintText,
    this.onChanged,
    this.obsecureText,
    super.key});
    String?hintText ;
    bool?obsecureText ; 
    Function(String)?onChanged ; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obsecureText!,
      validator:(data){
        if(data!.isEmpty){
          return 'Field is requaerd' ; 
        }
      },
      
    );
  }
}