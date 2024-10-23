import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 1 / 1.4,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            
            errorWidget: (context, url, error) {
              return const Icon(Icons.error);
            },
          )),
    );
  }
}
