import 'package:get/get.dart';
import 'package:wallpaper_anime/view/screen/FavoriteScreen.dart';
import 'package:wallpaper_anime/view/screen/home_screen.dart';

class AppRoutes {

 //initialRoute
  static const homeScreen = Routes.homeScreen;

  //GetPage
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.favorite,
      page: () => const FavoriteScreen(),
    ),
  ];
}

class Routes {
  static const homeScreen = "/homeScreen";
  static const favorite  = "/favorite";

}
