import 'package:flutter/material.dart';

class PhotoStack extends StatefulWidget {
  /// Creates photo stack with [photos] and call [onPhotosChanged]
  /// when user swipe the photo
  const PhotoStack({
    super.key,
    required this.photos,
    this.onPhotosChanged,
  });
  final List<String> photos;
  final Function(int)? onPhotosChanged;

  @override
  State<PhotoStack> createState() => _PhotoStackState();
}

class _PhotoStackState extends State<PhotoStack> {
  int idx = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        children: [
          Center(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.photos.length,
              onPageChanged: (value) {
                setState(() {
                  idx = value + 1;
                });
                if (widget.onPhotosChanged != null) {
                  widget.onPhotosChanged!(value);
                }
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.photos[index],
                  fit: BoxFit.contain,
                );
              },
            ),
          ),
          if (widget.photos.length != 1)
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 4,
                    ),
                    child: Text(
                      "$idx/${widget.photos.length}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
