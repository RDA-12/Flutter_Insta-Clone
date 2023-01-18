import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  /// Create expandable text with [text] and maxlines [trimLines]
  /// if [username] not null, add [username] to it
  const ExpandableText(
    this.text, {
    super.key,
    this.trimLines = 2,
    this.username,
  });

  final String text;
  final int trimLines;
  final String? username;

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  bool _readMore = true;
  void _onTapLink() {
    setState(() => _readMore = !_readMore);
  }

  final colorClickableText = Colors.grey;

  @override
  Widget build(BuildContext context) {
    TextSpan link = TextSpan(
      text: _readMore ? "...more" : "",
      style: TextStyle(
        color: colorClickableText,
      ),
      recognizer: TapGestureRecognizer()..onTap = _onTapLink,
    );
    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;
        // Create a TextSpan with data
        final text = TextSpan(
          text: widget.text,
        );
        // Layout and measure link
        TextPainter textPainter = TextPainter(
          text: link,
          textDirection: TextDirection
              .rtl, //better to pass this from master widget if ltr and rtl both supported
          maxLines: widget.trimLines,
          ellipsis: '...',
        );
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final linkSize = textPainter.size;
        // Layout and measure text
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;
        // Get the endIndex of data
        int? endIndex;
        final pos = textPainter.getPositionForOffset(
          Offset(
            textSize.width - linkSize.width,
            textSize.height,
          ),
        );
        late final TextSpan textSpan;
        endIndex = textPainter.getOffsetBefore(pos.offset);
        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
            text: _readMore ? widget.text.substring(0, endIndex) : widget.text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
            children: <TextSpan>[link],
          );
        } else {
          textSpan = TextSpan(
            text: widget.text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
          );
        }
        return RichText(
          softWrap: true,
          overflow: TextOverflow.clip,
          text: widget.username == null
              ? textSpan
              : TextSpan(
                  text: "${widget.username} ",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                  children: [
                    textSpan,
                  ],
                ),
        );
      },
    );
    return result;
  }
}
