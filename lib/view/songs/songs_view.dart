// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';

import '../../view_model/splasH_view_model.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView> with SingleTickerProviderStateMixin{
  TabController? controller;
  int selectTab = 0;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener((){
      selectTab = controller?.index ?? 0;
      setState(() {
        
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: TColor.bg,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.find<SplashViewMode>().openDrawer();
              },
              icon: Image.asset(
                "assets/img/menu.png",
                width: 25,
                height: 25,
                fit: BoxFit.contain,
              )),
          title: Text(
            "Songs",
            style: TextStyle(
                fontSize: 17,
                color: TColor.primaryText80,
                fontWeight: FontWeight.w600),
          ),
          actions: [
             Padding(
               padding: const EdgeInsets.only(right: 9),
               child: Image.asset(
                  "assets/img/search.png",
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                  color: TColor.primaryText35,
                ),
             ),
          ],
          ),
          body: Column(
            children: [
              SizedBox(
                height: kToolbarHeight - 15,
                child: TabBar(
                  controller: controller,
                  isScrollable: true,
                  indicatorColor: TColor.focus,
                  indicatorPadding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                  labelStyle: TextStyle(color: TColor.focus, fontSize: 15 , fontWeight: FontWeight.w600),
                  unselectedLabelStyle: TextStyle(color: TColor.primaryText80, fontSize: 15 , fontWeight: FontWeight.w600),
                  tabs:const [
                    Tab(text: "All Songs",),
                    Tab(text: "Playlist",),
                    Tab(text: "Albums",),
                    Tab(text: "Artists",),
                    Tab(text: "Genres",),
                  ],
                  ),
              ),
                 Expanded(child: TabBarView(
                  controller: controller,
                  children: const [
                   Center(child: Text("All Songs"),),
                   Center(child: Text("Playlist"),),
                   Center(child: Text("Albums"),),
                   Center(child: Text("Artists"),),
                   Center(child: Text("Genres"),),
          ]),)
            ],
          ),
       
    );
  }
}
