import 'package:bloc_project_todo/core/routes/route_name.dart';
import 'package:bloc_project_todo/core/routes/routes.dart';
import 'package:bloc_project_todo/core/utils/app_string.dart';
import 'package:bloc_project_todo/core/utils/validation.dart';
import 'package:bloc_project_todo/widgets/custom_text_form.dart';
import 'package:bloc_project_todo/widgets/rounded_elvated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginFormKey=GlobalKey<FormState>();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  bool isPasswordVisible=false;
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            child: Form(
              key: _loginFormKey,
              child: Column(
                children:[
                  Image.asset('assets/images/algo.jpg',width: 100,height: 100,),
                  SizedBox(height: 16,),
                  CustomTextForm(controller: _emailController,
                    validator: (val){
                    if(val!.isEmpty){
                      return AppString.Required;

                    }
                    else if(!validationRules.emailValidation.hasMatch(val)){
                      return AppString.provideEmail;
                    }
                    return null;




                    },
                    keyboardType:TextInputType.emailAddress,
                    obsecureText: false,
                    hintText: AppString.email,
                    suffix:null,
                  ),
                  SizedBox(height: 10,),
                  CustomTextForm( keyboardType: TextInputType.visiblePassword, hintText: AppString.password, obsecureText: !isPasswordVisible,

                      controller: _passwordController,
                      validator: (val){
                    if(val!.isEmpty){
                      return AppString.Required;
                    }
                      },
                      suffix: InkWell(
                      onTap: () {

                        setState(() {
                        isPasswordVisible=!isPasswordVisible;
                        });
                      },
                      child:Icon(
                          isPasswordVisible?Icons.visibility:Icons.visibility_off,
                        color: Colors.grey,

                      )

                  ),),
                  SizedBox(height: 10),
                   CustomElevatedButton(
                     buttonText: AppString.login,onPressed: (){
                       if(_loginFormKey.currentState!.validate()){}

                   },

                   ) ,
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(RouteNames.register);
                    },
                      child:RichText(text: TextSpan(
                        text: AppString.newUser,
                        style:TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text: AppString.register,
                            style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w500)
                          )

                        ]

                      ))

                  ),


                ]

              ),
              
            ),
            
            
            
            
          ),
          
        )
        
      ),
    );
  }
}


