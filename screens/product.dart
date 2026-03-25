import 'package:flutter/material.dart';
import 'product_model.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}
class _ProductState extends State<Product> {
  int _currentIndex = 0;
  ProductModel? selectedProduct;

  final List<ProductModel> products = [
    ProductModel("Laptop", 180000),
    ProductModel("Phone", 500000),
    ProductModel("Headphones", 10000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: _currentIndex == 0
          ? ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  child: Column(
                    children: [
                      Text(product.name),
                      Text("Price: ${product.price}"),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedProduct = product;
                            _currentIndex = 1;
                          });
                        },
                        child: Text("Click for more details"),
                      ),
                    ],
                  ),
                );
              },
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Name: ${selectedProduct?.name}"),
                Text("Price: ${selectedProduct?.price}"),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Text("Back"),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        }, items: [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "Details"),
         ],
      ),
    );
  }

}