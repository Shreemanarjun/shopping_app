import 'dart:convert';

class Productmodel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;
  Productmodel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  Productmodel copyWith({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    Rating? rating,
  }) {
    return Productmodel(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      category: category ?? this.category,
      image: image ?? this.image,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating.toMap(),
    };
  }

  factory Productmodel.fromMap(Map<String, dynamic> map) {
    return Productmodel(
      id: map['id']?.toInt(),
      title: map['title'],
      price: map['price']?.toDouble(),
      description: map['description'],
      category: map['category'],
      image: map['image'],
      rating: Rating.fromMap(map['rating']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Productmodel.fromJson(String source) => Productmodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Productmodel(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Productmodel &&
      other.id == id &&
      other.title == title &&
      other.price == price &&
      other.description == description &&
      other.category == category &&
      other.image == image &&
      other.rating == rating;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      price.hashCode ^
      description.hashCode ^
      category.hashCode ^
      image.hashCode ^
      rating.hashCode;
  }
}

class Rating {
  final double rate;
  final int count;
  Rating({
    required this.rate,
    required this.count,
  });

  Rating copyWith({
    double? rate,
    int? count,
  }) {
    return Rating(
      rate: rate ?? this.rate,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'rate': rate,
      'count': count,
    };
  }

  factory Rating.fromMap(Map<String, dynamic> map) {
    return Rating(
      rate: map['rate']?.toDouble(),
      count: map['count']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Rating.fromJson(String source) => Rating.fromMap(json.decode(source));

  @override
  String toString() => 'Rating(rate: $rate, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Rating &&
      other.rate == rate &&
      other.count == count;
  }

  @override
  int get hashCode => rate.hashCode ^ count.hashCode;
}