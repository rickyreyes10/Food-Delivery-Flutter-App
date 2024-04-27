import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Bison Burger",
        description:
            "Bison burgers are made from ground bison meat and can be cooked on the grill or in the pan. Because bison is lean, it's best to cook it to medium-rare (130–135°F) or rare so it doesn't dry out.",
        imagePath: "lib/images/burgers/bison_burger.jpg",
        price: 3.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra pickles", price: 0.99),
          Addon(name: "bacon", price: 1.99),
          Addon(name: "cheese", price: 0.99),
        ]),

    Food(
        name: "Cheese Burger",
        description:
            "A cheeseburger is a hamburger with a slice of melted cheese on top of the meat patty. The main ingredient in a cheeseburger is cheese, but the structure, ingredients, and composition can vary",
        imagePath: "lib/images/burgers/cheese_burger.jpg",
        price: 3.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra pickles", price: 0.99),
          Addon(name: "bacon", price: 1.99),
          Addon(name: "Extra cheese", price: 0.99),
        ]),

    Food(
        name: "Chicken Burger",
        description:
            "A chicken burger is made from ground or boneless, skinless chicken breast or thigh that's formed into a patty and served on a bun, roll, or between slices of bread.",
        imagePath: "lib/images/burgers/chicken_burger.jpg",
        price: 3.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra pickles", price: 0.99),
          Addon(name: "bacon", price: 1.99),
          Addon(name: "cheese", price: 0.99),
        ]),

    Food(
        name: "Turkey Burger",
        description:
            "A turkey burger is a burger made with ground turkey meat instead of beef. Turkey burgers are similar to beef burgers but are leaner and lower in saturated fat.",
        imagePath: "lib/images/burgers/turkey_burger.jpg",
        price: 3.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra pickles", price: 0.99),
          Addon(name: "bacon", price: 1.99),
          Addon(name: "cheese", price: 0.99),
        ]),

    Food(
        name: "Veggie Burger",
        description:
            "A veggie burger is a hamburger patty that doesn't contain meat, and can be made from a variety of ingredients.",
        imagePath: "lib/images/burgers/veggie_burger.jpg",
        price: 3.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra pickles", price: 0.99),
          Addon(name: "tomatoes", price: 1.99),
          Addon(name: "Extra lettuce", price: 0.99),
        ]),

    //desserts
    Food(
        name: "Cheese Cake",
        description:
            "Cheesecake is a dessert made with a thick, creamy filling of cheese, eggs, and sugar, and a thinner crust.",
        imagePath: "lib/images/desserts/cheese_cake.jpg",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Strawberry sauce", price: 0.99),
          Addon(name: "Caramel sauce", price: 0.99),
          Addon(name: "Oreos", price: 1.99),
        ]),

    Food(
        name: "Chocolate Brownie",
        description:
            "A chocolate brownie, or simply a brownie, is a baked American dessert or snack made with chocolate, flour, sugar, eggs, fat, and often nuts.",
        imagePath: "lib/images/desserts/chocolate_brownie.jpg",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Chocolate", price: 0.99),
          Addon(name: "Strawberries", price: 2.99),
        ]),

    Food(
        name: "Ice Cream",
        description:
            "Ice cream is a frozen dessert made from a mixture of dairy ingredients, sweeteners, flavorings, and other ingredients.",
        imagePath: "lib/images/desserts/ice_cream.jpg",
        price: 2.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "almonds", price: 0.50),
          Addon(name: "cashews", price: 0.50),
          Addon(name: "pecans", price: 0.50),
        ]),

    Food(
        name: "Peacan Pie",
        description:
            "Pecan pie is a Southern US specialty made with pecans, eggs, butter, sugar, and an unbaked pie crust.",
        imagePath: "lib/images/desserts/peacan_pie.jpg",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "almonds", price: 0.50),
          Addon(name: "cashews", price: 0.50),
          Addon(name: "pecans", price: 0.50),
        ]),

    Food(
        name: "Vanilla Cupcake",
        description:
            "A vanilla cupcake is a small, individual-sized cake that's baked in a muffin tin and made with vanilla extract.",
        imagePath: "lib/images/desserts/vanilla_cupcake.jpg",
        price: 1.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Sprinkles", price: 0.20),
          Addon(name: "Chocolate Chips", price: 0.20),
        ]),

    //drinks
    Food(
        name: "Apple Juice",
        description:
            "Apple juice is a fruit juice made by pressing and filtering fresh apples, and then sweetening them.",
        imagePath: "lib/images/drinks/apple_juice.jpg",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "12 oz", price: 0.50),
        ]),

    Food(
        name: "Beer",
        description:
            "Beer is a carbonated, fermented alcoholic beverage that's usually made from malted cereal grains, like barley, and flavored with hops.",
        imagePath: "lib/images/drinks/beer.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "12 oz", price: 0.50),
        ]),

    Food(
        name: "Iced Tea",
        description:
            "Iced tea is tea that has been chilled or cooled, and can be served with ice.",
        imagePath: "lib/images/drinks/ice_tea.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "12 oz", price: 0.50),
        ]),

    Food(
        name: "Margarita",
        description:
            "A margarita is a tequila-based cocktail that's made with triple sec, lime juice, and sometimes simple syrup.",
        imagePath: "lib/images/drinks/margarita.jpg",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "12 oz", price: 0.50),
        ]),

    Food(
        name: "Soda",
        description:
            "Sodas and other carbonated soft fizzy drinks usually contain carbonated water (water with dissolved carbon dioxide), some kind of sweetener, and natural or artificial flavoring.",
        imagePath: "lib/images/drinks/margarita.jpg",
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "12 oz", price: 0.50),
        ]),

    //sides
    Food(
        name: "Asparagus",
        description:
            "Asparagus is a green vegetable with a long, spear-like shape that's often eaten in the spring.",
        imagePath: "lib/images/sides/asparagus.jpg",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "lemon", price: 0.20),
        ]),

    Food(
        name: "Fries",
        description:
            "French fries, also known as chips, finger chips, or french-fried potatoes, are a snack or side dish made from potatoes that have been cut into strips and deep-fried.",
        imagePath: "lib/images/sides/fries.jpg",
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ketchup", price: 0.20),
          Addon(name: "Mustard", price: 0.20),
        ]),

    Food(
        name: "Mac and Cheese",
        description:
            "Macaroni and cheese, also known as mac and cheese in the United States and Canada, is a dish of pasta in a cheese sauce, typically cheddar.",
        imagePath: "lib/images/sides/mac_n_cheese.jpg",
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Cheese", price: 0.50),
        ]),

    Food(
        name: "Hash Browns",
        description:
            "Hash browns are a popular American breakfast dish of finely shredded potatoes that are fried until golden brown.",
        imagePath: "lib/images/sides/hash_browns.jpg",
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ketchup", price: 0.20),
          Addon(name: "Mustard", price: 0.20),
        ]),

    Food(
        name: "Mashed Potatoes",
        description:
            "Mashed potatoes are a dish made by mashing boiled or steamed potatoes with milk, butter, salt, and pepper, and often served as a side dish to meat or vegetables.",
        imagePath: "lib/images/sides/mashed_potatoes.jpg",
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Pepper", price: 0.20),
        ]),

    //salads
    Food(
        name: "Caesar Salad",
        description:
            "Caesar salad is a green salad typically made with romaine lettuce, croutons, Parmesan cheese, and Caesar dressing.",
        imagePath: "lib/images/salads/caesar_salad.jpg",
        price: 3.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "bacon bits", price: 0.50),
          Addon(name: "Extra Parmesan Cheese", price: 0.20),
        ]),

    Food(
        name: "Cucumber Salad",
        description:
            "Cucumber salad is a light and refreshing dish of thinly sliced cucumbers and onions tossed in a sweet and tangy vinaigrette.",
        imagePath: "lib/images/salads/cucumber_salad.jpg",
        price: 3.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "bacon bits", price: 0.50),
        ]),

    Food(
        name: "French Potato Salad",
        description:
            "French potato salad is a Mediterranean-inspired dish of potatoes tossed with a vinaigrette and fresh herbs.",
        imagePath: "lib/images/salads/french_potatoe_salad.jpg",
        price: 3.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "bacon bits", price: 0.50),
          Addon(name: "Extra Parmesan Cheese", price: 0.20),
        ]),

    Food(
        name: "Greek Salad",
        description:
            "A traditional Greek salad consists of sliced cucumbers, tomatoes, green bell pepper, red onion, olives, and feta cheese.",
        imagePath: "lib/images/salads/greek_salad.jpg",
        price: 3.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "bacon bits", price: 0.50),
        ]),

    Food(
        name: "Pasta Salad",
        description:
            "Pasta salad is a salad dish prepared with one or more types of pasta, almost always chilled, and most often tossed in a vinegar, oil, or mayonnaise-based dressing.",
        imagePath: "lib/images/salads/pasta_salad.jpg",
        price: 3.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "bacon bits", price: 0.50),
        ]),
  ];

  //user cart
  List<CartItem> _cart = [];

  //delivery address (which user change/update)
  String _deliveryAddress = '99 Hollywood Blv';

  /*
  GETTERS
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*
  OPERATIONS
  */

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with teh same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if food items are the same
      bool isSameFood = item.food == food;

      //check if list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners(); //to update the UI
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.remove(cartIndex);
      }
    }
    notifyListeners(); //update UI
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners(); //update UI
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  /*
  HELPERS
  */

  //generate a reciept
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
