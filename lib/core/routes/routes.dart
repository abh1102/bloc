import 'package:bloc_project_todo/core/routes/route_name.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/view/splashview.dart';

final GoRouter router=GoRouter(routes: [
  GoRoute(name: RouteNames.splash,path: "/",builder: (context,state)=>SplashView(),)
]);