import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:shifa_app/core/extension/extensions.dart';

class CustomChechedImage extends StatelessWidget {
  const CustomChechedImage(this.url, {super.key, this.borderRadius = 7});
  final String url;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
   
      key: UniqueKey(),
      fit: BoxFit.cover,
      imageUrl: url,
      placeholder: (context, url) => Stack(
        alignment: Alignment.center,
        children: [
          placeHolder(context),
          CircularProgressIndicator(
            strokeWidth: 1.5,
            color: Colors.black.withOpacity(0.3),
          ),
        ],
      ),
      imageBuilder: (context, imageProvider) => Hero(
        tag: url,
        child: Container(
          height: context.width * 0.80,
          width: context.width * 0.80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      errorWidget: (context, url, error) => placeHolder(context),
    );
  }
}

Container placeHolder(BuildContext context) {
  return Container(
    height: context.width * 0.80,
    width: context.width * 0.80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(7),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/image/placeholder.png'),
      ),
    ),
  );
}
