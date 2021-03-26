import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedImage extends StatelessWidget {
  String image;

  CustomCachedImage(this.image);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        placeholder: (context, url) => Container(
              color: Colors.grey,
            ),
        errorWidget: (context, url, error) => Icon(Icons.error),
        imageUrl: image,
        fit: BoxFit.cover);
  }
}
