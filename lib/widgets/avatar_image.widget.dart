import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AvatarImageWidget extends StatelessWidget {
  /// Este widget sirve para mostrar una imagen desde una url tipo avatar en un contenedor circular.

  /// Esta imagen muestra un placeholder mientras se carga la imagen
  const AvatarImageWidget({
    super.key,
    required this.avatar,
    this.height = 135,
    this.width = 135,
  });

  final String avatar;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: avatar,
      imageBuilder: (BuildContext c, ImageProvider imageProvider) => SizedBox(
        width: width,
        height: height,
        child: CircleAvatar(
          foregroundImage: imageProvider,
          backgroundImage: imageProvider,
        ),
      ),
      placeholder: (context, url) => Center(
        child: SizedBox(
          width: width,
          height: height,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator(color: Colors.white)],
            ),
          ),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
