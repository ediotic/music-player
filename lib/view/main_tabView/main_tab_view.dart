import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/view/home/home_view.dart';

class MainTabview extends StatefulWidget {
  const MainTabview({super.key});

  @override
  State<MainTabview> createState() => _MainTabviewState();
}

class _MainTabviewState extends State<MainTabview>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectedTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller?.addListener(() {
      selectedTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
       const HomeView(),
        Container(
          child: const Center(
            child: Text("Songs"),
          ),
        ),
        Container(
          child: const Center(
            child: Text("Settings"),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: TColor.bg,
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius:5,
              offset: Offset(0, -5)
            )
          ]
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation:0,
          child: TabBar(
            // physics:const ClampingScrollPhysics() ,
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: TColor.primary,
              labelStyle: const TextStyle(fontSize: 10),
              unselectedLabelColor: TColor.primaryText28,
              unselectedLabelStyle: const TextStyle(fontSize: 10),
              tabs: [
                Tab(
                    text: "Home",
                    icon: Image.asset(
                      selectedTab == 0
                          ? "assets/img/home_tab.png"
                          : "assets/img/home_tab_un.png",
                      width: 20,
                      height: 20,
                    )),
                Tab(
                    text: "Songs",
                    icon: Image.asset(
                      selectedTab == 1
                          ? "assets/img/songs_tab.png"
                          : "assets/img/songs_tab_un.png",
                      width: 20,
                      height: 20,
                    )),
                Tab(
                    text: "Settings",
                    icon: Image.asset(
                      selectedTab == 2
                          ? "assets/img/setting_tab.png"
                          : "assets/img/setting_tab_un.png",
                      width: 20,
                      height: 20,
                    )),
              ]),
        ),
      ),
    );
  }
}
