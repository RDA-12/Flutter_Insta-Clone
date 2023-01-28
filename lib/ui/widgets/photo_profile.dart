import 'package:flutter/material.dart';

class PhotoProfile extends StatelessWidget {
  /// Creates a [radius] radius circle avatar with [photo] in it. Add border if [addBorder] true
  ///
  /// [radius] default to 12
  /// [addBorder] default to true
  const PhotoProfile({
    super.key,
    required this.photo,
    this.radius = 12,
    required this.addBorder,
  });
  final String photo;
  final double radius;
  final bool addBorder;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: addBorder
            ? Border.all(
                color: Colors.green,
                strokeAlign: StrokeAlign.outside,
                width: 2,
              )
            : null,
        borderRadius: addBorder ? BorderRadius.circular(100) : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: CircleAvatar(
          maxRadius: radius,
          minRadius: radius,
          backgroundImage: AssetImage(
            photo,
          ),
        ),
      ),
    );
  }
}
