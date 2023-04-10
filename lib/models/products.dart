class Products {
  List<Product> products;
  int total;
  int skip;
  int limit;

  Products({
    required this.products,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory Products.fromJson(Map<String, dynamic> parsedJson) => Products(
        products: List<Product>.from(
            parsedJson["products"].map((x) => Product.fromJson(x))),
        total: parsedJson["total"],
        skip: parsedJson["skip"],
        limit: parsedJson["limit"],
      );
}

class Product {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> parsedJson) => Product(
        id: parsedJson["id"],
        title: parsedJson["title"],
        description: parsedJson["description"],
        price: parsedJson["price"],
        discountPercentage: parsedJson["discountPercentage"]?.toDouble(),
        rating: parsedJson["rating"]?.toDouble(),
        stock: parsedJson["stock"],
        brand: parsedJson["brand"],
        category: parsedJson["category"],
        thumbnail: parsedJson["thumbnail"],
        images: List<String>.from(parsedJson["images"].map((x) => x)),
      );
}
