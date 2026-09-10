class Product {
  final String id;
  final String name;
  final double price;
  final String? image;
  final String? description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.image,
    this.description,
  });

  // Khởi tạo từ Map (JSON)
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toString() ?? '',
      name: map['name']?.toString() ?? '',
      price: (map['price'] as num?)?.toDouble() ?? 0.0,
      image: map['image']?.toString(),
      description: map['description']?.toString(),
    );
  }

  // Chuyển đối tượng Product thành Map (JSON)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
    };
  }
}
