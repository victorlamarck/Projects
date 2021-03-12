import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:shop/utils/constants.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
    this.isFavorite = false,
  });

  Future<void> toggleFavorite(String token, String userId) async {
    isFavorite = !isFavorite;
    notifyListeners();

    final String url =
        '${Constants.BASE_API_URL}/userFavorites/$userId/$id.json?auth=$token';

    put(
      url,
      body: json.encode(isFavorite),
    );
  }
}
