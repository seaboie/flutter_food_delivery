import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/drawer/my_drawer.dart';
import 'package:flutter_food_delivery/components/my_current_location.dart';
import 'package:flutter_food_delivery/components/my_description_box.dart';
import 'package:flutter_food_delivery/components/my_sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            title: const Text('title'),
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
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
