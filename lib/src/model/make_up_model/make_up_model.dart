import 'dart:convert';

import 'product_color.dart';

class MakeUpModel {
  int? id;
  String? brand;
  String? name;
  String? price;
  dynamic priceSign;
  dynamic currency;
  String? imageLink;
  String? productLink;
  String? websiteLink;
  String? description;
  double? rating;
  dynamic category;
  String? productType;
  List<dynamic>? tagList;
  String? createdAt;
  String? updatedAt;
  String? productApiUrl;
  String? apiFeaturedImage;
  List<ProductColor>? productColors;

  MakeUpModel({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  @override
  String toString() {
    return 'MakeUpModel(id: $id, brand: $brand, name: $name, price: $price, priceSign: $priceSign, currency: $currency, imageLink: $imageLink, productLink: $productLink, websiteLink: $websiteLink, description: $description, rating: $rating, category: $category, productType: $productType, tagList: $tagList, createdAt: $createdAt, updatedAt: $updatedAt, productApiUrl: $productApiUrl, apiFeaturedImage: $apiFeaturedImage, productColors: $productColors)';
  }

  factory MakeUpModel.fromMap(Map<String, dynamic> data) => MakeUpModel(
        id: data['id'] as int?,
        brand: data['brand'] as String?,
        name: data['name'] as String?,
        price: data['price'] as String?,
        priceSign: data['price_sign'] as dynamic,
        currency: data['currency'] as dynamic,
        imageLink: data['image_link'] as String?,
        productLink: data['product_link'] as String?,
        websiteLink: data['website_link'] as String?,
        description: data['description'] as String?,
        rating: (data['rating'] as num?)?.toDouble(),
        category: data['category'] as dynamic,
        productType: data['product_type'] as String?,
        tagList: data['tag_list'] as List<dynamic>?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        productApiUrl: data['product_api_url'] as String?,
        apiFeaturedImage: data['api_featured_image'] as String?,
        productColors: (data['product_colors'] as List<dynamic>?)
            ?.map((e) => ProductColor.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'brand': brand,
        'name': name,
        'price': price,
        'price_sign': priceSign,
        'currency': currency,
        'image_link': imageLink,
        'product_link': productLink,
        'website_link': websiteLink,
        'description': description,
        'rating': rating,
        'category': category,
        'product_type': productType,
        'tag_list': tagList,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'product_api_url': productApiUrl,
        'api_featured_image': apiFeaturedImage,
        'product_colors': productColors?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MakeUpModel].
  factory MakeUpModel.fromJson(String data) {
    return MakeUpModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MakeUpModel] to a JSON string.
  String toJson() => json.encode(toMap());

  MakeUpModel copyWith({
    int? id,
    String? brand,
    String? name,
    String? price,
    dynamic priceSign,
    dynamic currency,
    String? imageLink,
    String? productLink,
    String? websiteLink,
    String? description,
    double? rating,
    dynamic category,
    String? productType,
    List<dynamic>? tagList,
    String? createdAt,
    String? updatedAt,
    String? productApiUrl,
    String? apiFeaturedImage,
    List<ProductColor>? productColors,
  }) {
    return MakeUpModel(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      name: name ?? this.name,
      price: price ?? this.price,
      priceSign: priceSign ?? this.priceSign,
      currency: currency ?? this.currency,
      imageLink: imageLink ?? this.imageLink,
      productLink: productLink ?? this.productLink,
      websiteLink: websiteLink ?? this.websiteLink,
      description: description ?? this.description,
      rating: rating ?? this.rating,
      category: category ?? this.category,
      productType: productType ?? this.productType,
      tagList: tagList ?? this.tagList,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      productApiUrl: productApiUrl ?? this.productApiUrl,
      apiFeaturedImage: apiFeaturedImage ?? this.apiFeaturedImage,
      productColors: productColors ?? this.productColors,
    );
  }
}
