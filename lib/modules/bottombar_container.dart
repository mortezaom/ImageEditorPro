import 'package:firexcode/firexcode.dart';

class BottomBarContainer extends StatelessWidget {
  final Color colors;
  final void Function() ontap;
  final String title;
  final IconData icons;

  const BottomBarContainer(
      {super.key,
      required this.ontap,
      required this.title,
      required this.icons,
      required this.colors});
  @override
  Widget build(BuildContext context) {
    return xColumnCC
        .list([
          icons.xIcons(color: Colors.white),
          4.0.sizedHeight(),
          title.xText(color: Colors.white)
        ])
        .xInkWell(onTap: ontap)
        .xMaterial(
          color: colors,
        )
        .xContainer(padding: EdgeInsets.all(0.0), width: xwidth(context) / 5);
  }
}
