import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/drawer/my_drawer.dart';
import 'package:flutter_food_delivery/components/my_current_location.dart';
import 'package:flutter_food_delivery/components/my_description_box.dart';
import 'package:flutter_food_delivery/components/my_food_tile.dart';
import 'package:flutter_food_delivery/components/my_sliver_app_bar.dart';
import 'package:flutter_food_delivery/components/my_tab_bar.dart';
import 'package:flutter_food_delivery/models/food.dart';
import 'package:flutter_food_delivery/models/restaurant.dart';
import 'package:flutter_food_delivery/pages/food_page.dart';
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

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _fileMenuByCategory(category, fullMenu);
      return ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final food = categoryMenu[index];
          return MyFoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
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
        body: Consumer<Restaurant>(
          builder: (context, value, child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(value.menu),
          ),
        ),
      ),
    );
  }
}
