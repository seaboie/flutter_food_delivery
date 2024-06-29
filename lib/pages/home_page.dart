import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/drawer/my_drawer.dart';
import 'package:flutter_food_delivery/components/my_current_location.dart';
import 'package:flutter_food_delivery/components/my_description_box.dart';
import 'package:flutter_food_delivery/components/my_sliver_app_bar.dart';
import 'package:flutter_food_delivery/components/my_tab_bar.dart';
import 'package:flutter_food_delivery/models/food.dart';
import 'package:flutter_food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sort out and return a lists of food items

  List<Food> _fileMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return lists of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _fileMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(categoryMenu[index].name),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      // appBar: AppBar(             // *** Default AppBar ไม่ต้องใช้
      //   title: const Text('Home'),
      // ),
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Divider()
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my current location
                const MyCurrentLocation(),

                // description box
                const MyDescriptionBox()
              ],
            ),
          )
        ],
        body: Consumer<Restaurant>(builder: (context, value, child) => TabBarView(
          controller: _tabController,
          children: getFoodInThisCategory(value.menu),
        ),),
      ),
    );
  }
}
