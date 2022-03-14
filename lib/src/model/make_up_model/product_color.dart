import 'dart:convert';

class ProductColor {
  String? hexValue;
  String? colourName;

  ProductColor({this.hexValue, this.colourName});

  @override
  String toString() {
    return 'ProductColor(hexValue: $hexValue, colourName: $colourName)';
  }

  factory ProductColor.fromMap(Map<String, dynamic> data) => ProductColor(
        hexValue: data['hex_value'] as String?,
        colourName: data['colour_name'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'hex_value': hexValue,
        'colour_name': colourName,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProductColor].
  factory ProductColor.fromJson(String data) {
    return ProductColor.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProductColor] to a JSON string.
  String toJson() => json.encode(toMap());

  ProductColor copyWith({
    String? hexValue,
    String? colourName,
  }) {
    return ProductColor(
      hexValue: hexValue ?? this.hexValue,
      colourName: colourName ?? this.colourName,
    );
  }
}
