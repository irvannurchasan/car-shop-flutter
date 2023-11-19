import 'package:car_shop/models/car.dart';
import 'package:car_shop/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),

              const SizedBox(height: 25),

              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: ((context, index) {
                    // get individual car
                    Car individualCar = value.getUserCart()[index];

                    // return the cart item
                    return CartItem(car: individualCar,);
                  }  
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}