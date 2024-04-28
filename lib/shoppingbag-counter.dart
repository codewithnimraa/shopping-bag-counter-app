import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int totalItemsInCart = 0;

  void addItemToCart() {
    setState(() {
      totalItemsInCart++; // Increment total items in cart
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Shopping App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Shopping bag icon and item quantity badge
            Stack(
              children: [
                IconButton(
                  icon: const Icon(Icons.shopping_bag,
                      color: Color.fromARGB(255, 233, 151, 178)),
                  onPressed: () {
                    // Open shopping cart screen or perform other action
                  },
                ),
                if (totalItemsInCart >
                    0) // Only show badge if items are in cart
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 10,
                      child: Text(
                        totalItemsInCart.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20),

            // Button to add item to cart
            // ElevatedButton(
            //   onPressed: addItemToCart,
            //   child: const Text('Add Item to Cart'),
            // ),

            // List of items with "Add to Cart" button
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Number of items in the list
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                    trailing: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.pink)),
                      onPressed: addItemToCart,
                      child: const Text('Add to Cart'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
