import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageBuilder {
  ImageBuilder._();

  static asset(String src, {double? width, double? height, double? radius}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: Image.asset(
        src,
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }

  static url(String src, {double? width, double? height, double? radius}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 0),
      child: CachedNetworkImage(
          imageUrl: src,
          width: width,
          height: height,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => Container()),
    );
  }
}
