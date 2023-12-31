import 'dart:io';

import 'package:firexcode/firexcode.dart';

class ImageView extends StatefulWidget {
  final File file;

  const ImageView({super.key, required this.file});
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    return Image.file(widget.file).xCenter().xScaffold();
  }
}
