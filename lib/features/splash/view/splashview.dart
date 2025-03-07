import 'package:bloc_project_todo/core/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_image_url.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState(){
    WidgetsBinding.instance.addPostFrameCallback((_){
      context.goNamed(RouteNames.login);
    });
   super.initState();
  }
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImageUrl.logo,width: 100,height: 100,),
      ),
    );
  }
}




