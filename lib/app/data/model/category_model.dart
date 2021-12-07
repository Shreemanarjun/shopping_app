import 'dart:convert';

class CategoryModel {
  String imagepath;
  String label;
  CategoryModel({
    required this.imagepath,
    required this.label,
  });

  CategoryModel copyWith({
    String? imagepath,
    String? label,
  }) {
    return CategoryModel(
      imagepath: imagepath ?? this.imagepath,
      label: label ?? this.label,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imagepath': imagepath,
      'label': label,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      imagepath: map['imagepath'],
      label: map['label'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source));

  @override
  String toString() => 'CategoryModel(imagepath: $imagepath, label: $label)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CategoryModel &&
      other.imagepath == imagepath &&
      other.label == label;
  }

  @override
  int get hashCode => imagepath.hashCode ^ label.hashCode;
}
