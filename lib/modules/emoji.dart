import 'package:firexcode/firexcode.dart';

class EmojiView extends StatefulWidget {
  final double left;
  final double top;
  final void Function() ontap;
  final Map mapJson;
  final Function(DragUpdateDetails) onpanupdate;

  const EmojiView({
    super.key,
    required this.left,
    required this.top,
    required this.ontap,
    required this.onpanupdate,
    required this.mapJson,
  });
  @override
  _EmojiViewState createState() => _EmojiViewState();
}

class _EmojiViewState extends State<EmojiView> {
  @override
  Widget build(BuildContext context) {
    return widget.mapJson['name']
        .toString()
        .text(
            textAlign: widget.mapJson['align'],
            style: TextStyle(
              color: widget.mapJson['color'],
              fontSize: widget.mapJson['size'],
            ))
        .xGesture(
          onTap: widget.ontap,
          onPanUpdate: widget.onpanupdate,
        )
        .xPositioned(
          left: widget.left,
          top: widget.top,
        );
  }
}
