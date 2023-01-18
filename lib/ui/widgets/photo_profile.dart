import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  /// Creates a circle avatar with [photo] in it
  const PhotoProfile({super.key, required this.photo});
  final String photo;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 12,
      minRadius: 12,
      backgroundImage: AssetImage(
        photo,
      ),
    );
  }
}
