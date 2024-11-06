import 'dart:convert';

import 'package:apiwworking/Product.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  var productList = <ProductElement>[].obs;
  RxBool isloading = false.obs;

  // Fetch product data from the API
  Future<void> fetchProduct() async {
    isloading(true);
    final response = await http.get(Uri.parse(
        'https://elohimtechnology.com/wakhlamarketplace/public/api/products'));

    if (response.statusCode == 200) {
      // Parse JSON data
      final List<dynamic> jsonData = json.decode(response.body)['products'];

      // Map the parsed data to ProductElement objects and update productList
      productList.value =
          jsonData.map((json) => ProductElement.fromJson(json)).toList();
    } else {
      print("Failed to fetch products");
    }
    isloading(false);
  }

  @override
  void onInit() {
    super.onInit();
    fetchProduct(); // Automatically fetch data when the controller is initialized
  }
}
