import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/components/my_button.dart';
import 'package:flutter_food_delivery/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // food image
            Image.asset(widget.food.imagePath),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    '\$ ${widget.food.price}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  // food description
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),

                  const SizedBox(height: 10),

                  // addons
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (BuildContext context, int index) {
                        // get individual addon
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                          title: Text(
                            addon.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            '\$ ${addon.price}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          value: false,
                          onChanged: (value) {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // button => add to cart
            MyButton(
              text: 'Add to cart',
              onTap: () {},
            ),

            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
