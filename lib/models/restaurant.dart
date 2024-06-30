import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> menu = [
    // burgers
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/food.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    // salads
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    // sides
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/sides.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    // desserts
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/ice_cream.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/ice_cream.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/ice_cream.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/ice_cream.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/ice_cream.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    // drinks
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/drink.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/drink.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/drink.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/drink.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburge",
      description:
          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Veritatis aliquam repudiandae beatae necessitatibus corporis quibusdam omnis aspernatur, accusamus voluptates blanditiis.",
      imagePath: "assets/images/drink.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
  ];
}
