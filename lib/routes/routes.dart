import 'package:get/get.dart';
import 'package:wallpaper_anime/view/screen/home_screen.dart';

class AppRoutes {

 //initialRoute
 // static const welcome = Routes.welcomeScreen;
  static const homeScreen = Routes.homeScreen;

  //GetPage
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
  ];
}

class Routes {
  static const homeScreen = "/homeScreen";
}
