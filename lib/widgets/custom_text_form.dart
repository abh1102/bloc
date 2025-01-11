import 'package:flutter/material.dart';
class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obsecureText;
  final String? hintText;
  final Widget? suffix;
  final String? Function(String? val) validator;

  const CustomTextForm({
    required this.validator,
    required this.keyboardType,
    required this.hintText,
    required this.obsecureText,
    required this.controller,
    required this.suffix,




    super.key,




  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      obscureText: obsecureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      style: Theme.of(context).textTheme.titleMedium,
      keyboardType: keyboardType,
      decoration:  InputDecoration(
          suffix: suffix,
          hintText: hintText,
          hintStyle: const TextStyle(fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color:Colors.brown,width: 1),
              borderRadius: BorderRadius.circular(10)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.brown,width: 1)

          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.lightBlue,width:1),
              borderRadius: BorderRadius.circular(10)
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.redAccent,width:1),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width:1),
            borderRadius: BorderRadius.circular(10),
          ),

          errorStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.red,fontSize: 12)


      ),



      validator: validator,
    );
  }
}
