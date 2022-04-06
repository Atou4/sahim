
import 'package:flutter/material.dart';
import 'package:sahim/theme/colors.dart';

@immutable
class ProButton extends StatelessWidget {

  final Function onPressed;
  final Color? color;

  final Widget? prefix;
  final Widget? suffix;
  final String text;
  final MainAxisAlignment? mainAxisAlignment;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final bool isOutlined ;
  final Color? borderColor;

  const ProButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.prefix,
    this.suffix,
    this.mainAxisAlignment,
    this.height,
    this.width,
    this.color,
    this.textStyle,
    this.isOutlined = false,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 28.0,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color!= null
            ? color!
            : Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(5.0),
        border: isOutlined ? Border.all(width: 2.0,color: borderColor ?? Theme.of(context).primaryColor) : null
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(5.0),
        onTap:  ()=> onPressed(),
        splashColor: Theme.of(context).splashColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: mainAxisAlignment!=null
              ?mainAxisAlignment!
              :MainAxisAlignment.center,
          children: [
            Text(text,style:
                textStyle ??
                Theme.of(context).textTheme.button!.copyWith(color:SahimColors.white)
            ),
          ],
        ),
      ),
    );
  }
}
