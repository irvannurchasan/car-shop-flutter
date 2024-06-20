import 'package:car_shop/models/car.dart';
import 'package:car_shop/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/car_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add car to cart
  void addCarToCart(Car car) {
    Provider.of<Cart>(context, listen: false).addItemToCart(car);

    // notif mobil udh ke keranjang
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer <Cart>(builder: (context, value, child) => Column(
      children: [
        //Search bar
        Container(
          padding: const EdgeInsets.all(12) ,
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children :[ 
                Text('Search',
                style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  ),
              ],
          ),
        ),
        
        //pesan
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
          'everyone flies... some fly longer than others',
          style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        //hot picks
           Padding(
             padding: const EdgeInsets.symmetric(horizontal :25.0),
             child: Row  (
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children: const [ 
                      Text(
                        'Hot Picks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                        ),
                        Text('See all',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                            ),
                          ],
                        ),
                      ),

              const SizedBox(height: 10,),

              Expanded(child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: ( context,  index) {
                  // create a car
                  Car car = value.getCarList() [index];
                      // return car 
                  return CarTile(
                  car: car,
                  onTap: () => addCarToCart(car),
                  ); 
                 
                },
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 25.0, left: 25, right: 25 ),
              child: Divider(
                color: Colors.white,),
            )
        ],
      )
     );
    }
  }
