import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_anime/routes/routes.dart';
import 'package:wallpaper_anime/view/widgets/search_widget.dart';
import 'package:wallpaper_anime/view/widgets/images_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: SafeArea(
          child: Column(children: [
            //Custom App Bar
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Text(
                      'Dp wallpapers',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.favorite);
                      },
                      icon: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ]),
            ),
            //Search Widget
            SearchWidget(),

            //Tab Bar
            TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                padding: EdgeInsets.symmetric(horizontal: 5),
                indicator:
                    BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
                isScrollable: true,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Trending'),
                  Tab(text: 'Featured'),
                  Tab(text: 'Nature'),
                  Tab(text: 'Sky'),
                  Tab(text: 'See'),
                ]),

            Flexible(
              flex: 1,
              child: TabBarView(children: [
                ImagesWidget(),
                ImagesWidget(),
                ImagesWidget(),
                ImagesWidget(),
                ImagesWidget(),
                ImagesWidget(),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
