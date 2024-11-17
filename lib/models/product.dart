// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    Model model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: modelValues.map[json["model"]]!,
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse[model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    int user;
    String name;
    int price;
    String description;
    int stockAvailable;
    Photo photo;

    Fields({
        required this.user,
        required this.name,
        required this.price,
        required this.description,
        required this.stockAvailable,
        required this.photo,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        stockAvailable: json["stock_available"],
        photo: photoValues.map[json["photo"]]!,
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
        "stock_available": stockAvailable,
        "photo": photoValues.reverse[photo],
    };
}

enum Photo {
    EMPTY,
    PRODUCT_IMAGES_B9_F1_A64_DD4064_ADC44_EA510431_A67541_PNG,
    PRODUCT_IMAGES_CITY_NIGHT_JPG,
    PRODUCT_IMAGES_FOREST_PNG
}

final photoValues = EnumValues({
    "": Photo.EMPTY,
    "product_images/b9f1a64dd4064adc44ea510431a67541.png": Photo.PRODUCT_IMAGES_B9_F1_A64_DD4064_ADC44_EA510431_A67541_PNG,
    "product_images/city_night.jpg": Photo.PRODUCT_IMAGES_CITY_NIGHT_JPG,
    "product_images/forest.png": Photo.PRODUCT_IMAGES_FOREST_PNG
});

enum Model {
    MAIN_PRODUCT
}

final modelValues = EnumValues({
    "main.product": Model.MAIN_PRODUCT
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
