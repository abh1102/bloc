import 'package:bloc_project_todo/auth/view/login_view.dart';
import 'package:bloc_project_todo/auth/view/register_view.dart';
import 'package:bloc_project_todo/core/routes/route_name.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/view/splashview.dart';

final GoRouter router=GoRouter(routes: [
  GoRoute(
    name: RouteNames.splash,path: "/",builder: (context,state)=>SplashView(),),
    GoRoute(name: RouteNames.register,
    builder: (context,state)=>const RegisterView(), path: "/register"
    ),
  GoRoute(path: '/login',
    name: RouteNames.login,
    builder: (context,state)=>const LoginView(),
  )
  
  
]);