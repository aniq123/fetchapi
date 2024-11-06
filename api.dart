import 'package:apiwworking/productcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Api extends StatelessWidget {
  Api({super.key});
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('ShopX'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "ShopX",
                      style: TextStyle(
                          fontFamily: 'avenir',
                          fontSize: 32,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.view_list_rounded)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.grid_view)),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () => productController.isloading.value
                    ? Center(child: CircularProgressIndicator())
                    : GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: List.generate(
                          productController.productList.length,
                          (index) {
                            final product =
                                productController.productList[index];
                            return Container(
                              color: Colors.amberAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    product.productName,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Price: ${product.price ?? 'N/A'}'),
                                  Text(
                                      'Catagory: ${product.category ?? 'N/A'}'),
                                  Text('AddedBy:${product.addedBy ?? 'N/A'}'),
                                  Text('Discount:${product.discount ?? 'N/A'}'),
                                  // Add more fields as necessary
                                ],
                              ),
                            );
                          },
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
