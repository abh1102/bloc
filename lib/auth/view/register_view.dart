import 'package:bloc_project_todo/core/utils/app_string.dart';
import 'package:bloc_project_todo/core/utils/validation.dart';
import 'package:bloc_project_todo/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';

import '../../widgets/rounded_elvated_button.dart';
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
final _registerFormKey=GlobalKey<FormState>();
final TextEditingController _firstNameController=TextEditingController();
final TextEditingController _lastNameController=TextEditingController();
final TextEditingController _emailController=TextEditingController();
final TextEditingController _passwordController=TextEditingController();
bool isPasswordVisible=false;
@override
void dispose(){
  _firstNameController.dispose();
  _lastNameController.dispose();
  _emailController.dispose();
  _passwordController.dispose();
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
         child:  Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
           child: Form(
             key: _registerFormKey,
               child: Column(
                 children: [
                   Image.asset('assets/images/algo.jpg',width: 100,height: 100,),
                   SizedBox(height: 15),
                   CustomTextForm(
                     controller: _firstNameController,
                     validator: (val){
                       if(val!.isEmpty){
                         return AppString.Required;
                       }
                       return null;
                     },
                     keyboardType:TextInputType.text ,
                     hintText:'name', obsecureText: false,
                     suffix: null,

                   ),
                   CustomTextForm(
                     controller: _lastNameController,
                     validator: (val){
                       if(val!.isEmpty){
                         return AppString.Required;
                       }
                       return null;
                     },
                     keyboardType:TextInputType.text ,
                     hintText:'lastName', obsecureText: false,
                     suffix: null,

                   ),
                   CustomTextForm(
                     controller: _emailController,
                     validator: (val){
                       if(val!.isEmpty){
                         return AppString.Required;
                       }
                       else if(!validationRules.emailValidation.hasMatch(val)){
                         return AppString.Required;

                       }
                       return null;
                     },
                     keyboardType:TextInputType.text ,
                     hintText:'email', obsecureText: false,
                     suffix: null,

                   ),
                   CustomTextForm(
                     controller: _passwordController,
                     validator: (val){
                       if(val!.isEmpty){
                         return AppString.Required;
                       }

                       return null;
                     },
                     keyboardType:TextInputType.visiblePassword ,
                     hintText:'Password', obsecureText: isPasswordVisible,
                     suffix: GestureDetector(
                       onTap: (){
                         setState(() {
                           isPasswordVisible=!isPasswordVisible;
                         });
                         child:Icon(
                           isPasswordVisible?Icons.visibility:Icons.visibility_off,
                           color: Colors.grey,
                         );
                       },
                     ),

                   ),
                   SizedBox(height: 15),
                   CustomElevatedButton(buttonText: 'Register', onPressed: () {
                     if(_registerFormKey.currentState!.validate()){}

                   },

                   )
                 ],
               )
           )

         ) ,


        ),
      ) ,
    );
  }
}
