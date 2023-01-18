import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../widgets/horizontal_space.dart';

class PostActionRow extends StatelessWidget {
  /// Creates row of action for post widget
  ///
  /// [photosAmount] is amount of post's photos,
  /// [idx] is index of showed photo
  const PostActionRow({
    super.key,
    required this.idx,
    required this.photosAmount,
  });
  final int idx;
  final int photosAmount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                SvgPicture.asset(
                  AssetConstants.likeIc,
                  height: 20,
                  width: 20,
                ),
                const HorizontalSpace(space: 12),
                SvgPicture.asset(
                  AssetConstants.commentIc,
                  height: 20,
                  width: 20,
                ),
                const HorizontalSpace(space: 12),
                SvgPicture.asset(
                  AssetConstants.sendIc,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (photosAmount != 1)
                  Expanded(
                    child: SizedBox(
                      height: 24,
                      child: Align(
                        alignment: Alignment.center,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: photosAmount,
                          itemBuilder: (context, index) {
                            return Icon(
                              Icons.circle,
                              size: 8,
                              color: index == (idx - 1)
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                SvgPicture.asset(
                  AssetConstants.saveIc,
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
