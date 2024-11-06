// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  bool success;
  String message;
  List<ProductElement> products;

  Product({
    required this.success,
    required this.message,
    required this.products,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        success: json["success"],
        message: json["message"],
        products: List<ProductElement>.from(
            json["products"].map((x) => ProductElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class ProductElement {
  int id;
  String status;
  dynamic statusComment;
  String sellerRefCode;
  String productCode;
  String? productSku;
  dynamic productRating;
  String productName;
  String? description;
  String? price;
  int? stock;
  String warranty;
  String weight;
  String weightUnit;
  String width;
  String height;
  String subCategory;
  String subSubCategory;
  String category;
  int? discount;
  int deliveryStatus;
  int productVariantsStatus;
  int productSize;
  String? picture;
  dynamic video;
  DateTime addedOn;
  String addedBy;
  dynamic updatedOn;
  dynamic updatedBy;
  List<Variant> variants;

  ProductElement({
    required this.id,
    required this.status,
    required this.statusComment,
    required this.sellerRefCode,
    required this.productCode,
    required this.productSku,
    required this.productRating,
    required this.productName,
    required this.description,
    required this.price,
    required this.stock,
    required this.warranty,
    required this.weight,
    required this.weightUnit,
    required this.width,
    required this.height,
    required this.subCategory,
    required this.subSubCategory,
    required this.category,
    required this.discount,
    required this.deliveryStatus,
    required this.productVariantsStatus,
    required this.productSize,
    required this.picture,
    required this.video,
    required this.addedOn,
    required this.addedBy,
    required this.updatedOn,
    required this.updatedBy,
    required this.variants,
  });

  factory ProductElement.fromJson(Map<String, dynamic> json) => ProductElement(
        id: json["id"],
        status: json["status"],
        statusComment: json["status_comment"],
        sellerRefCode: json["seller_ref_code"],
        productCode: json["product_code"],
        productSku: json["product_sku"],
        productRating: json["productRating"],
        productName: json["product_name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        warranty: json["warranty"],
        weight: json["weight"],
        weightUnit: json["weight_unit"],
        width: json["width"],
        height: json["height"],
        subCategory: json["sub_category"],
        subSubCategory: json["sub_sub_category"],
        category: json["category"],
        discount: json["discount"],
        deliveryStatus: json["delivery_status"],
        productVariantsStatus: json["product_variants_status"],
        productSize: json["product_size"],
        picture: json["picture"],
        video: json["video"],
        addedOn: DateTime.parse(json["added_on"]),
        addedBy: json["added_by"],
        updatedOn: json["updated_on"],
        updatedBy: json["updated_by"],
        variants: List<Variant>.from(
            json["variants"].map((x) => Variant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
        "status_comment": statusComment,
        "seller_ref_code": sellerRefCode,
        "product_code": productCode,
        "product_sku": productSku,
        "productRating": productRating,
        "product_name": productName,
        "description": description,
        "price": price,
        "stock": stock,
        "warranty": warranty,
        "weight": weight,
        "weight_unit": weightUnit,
        "width": width,
        "height": height,
        "sub_category": subCategory,
        "sub_sub_category": subSubCategory,
        "category": category,
        "discount": discount,
        "delivery_status": deliveryStatus,
        "product_variants_status": productVariantsStatus,
        "product_size": productSize,
        "picture": picture,
        "video": video,
        "added_on": addedOn.toIso8601String(),
        "added_by": addedBy,
        "updated_on": updatedOn,
        "updated_by": updatedBy,
        "variants": List<dynamic>.from(variants.map((x) => x.toJson())),
      };
}

class Variant {
  int id;
  String sellerRefCode;
  String? sku;
  String productCode;
  String color;
  String? colorImage;
  int? colorPrice;
  String? colorDiscountPrice;
  int? colorStock;
  DateTime createdAt;
  dynamic createdBy;
  List<Size> sizes;

  Variant({
    required this.id,
    required this.sellerRefCode,
    required this.sku,
    required this.productCode,
    required this.color,
    required this.colorImage,
    required this.colorPrice,
    required this.colorDiscountPrice,
    required this.colorStock,
    required this.createdAt,
    required this.createdBy,
    required this.sizes,
  });

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"],
        sellerRefCode: json["seller_ref_code"],
        sku: json["sku"],
        productCode: json["product_code"],
        color: json["color"],
        colorImage: json["color_image"],
        colorPrice: json["color_price"],
        colorDiscountPrice: json["color_discount_price"],
        colorStock: json["color_stock"],
        createdAt: DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        sizes: List<Size>.from(json["sizes"].map((x) => Size.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "seller_ref_code": sellerRefCode,
        "sku": sku,
        "product_code": productCode,
        "color": color,
        "color_image": colorImage,
        "color_price": colorPrice,
        "color_discount_price": colorDiscountPrice,
        "color_stock": colorStock,
        "created_at": createdAt.toIso8601String(),
        "created_by": createdBy,
        "sizes": List<dynamic>.from(sizes.map((x) => x.toJson())),
      };
}

class Size {
  int id;
  int variantId;
  String productCode;
  String sku;
  int size;
  String sizeName;
  int sizeStock;
  int sizePrice;
  int sizeDiscountPrice;

  Size({
    required this.id,
    required this.variantId,
    required this.productCode,
    required this.sku,
    required this.size,
    required this.sizeName,
    required this.sizeStock,
    required this.sizePrice,
    required this.sizeDiscountPrice,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        variantId: json["variant_id"],
        productCode: json["product_code"],
        sku: json["sku"],
        size: json["size"],
        sizeName: json["size_name"],
        sizeStock: json["size_stock"],
        sizePrice: json["size_price"],
        sizeDiscountPrice: json["size_discount_price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "variant_id": variantId,
        "product_code": productCode,
        "sku": sku,
        "size": size,
        "size_name": sizeName,
        "size_stock": sizeStock,
        "size_price": sizePrice,
        "size_discount_price": sizeDiscountPrice,
      };
}
