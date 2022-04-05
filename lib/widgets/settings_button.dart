
import 'package:flutter/material.dart';

@immutable
class SettingsButton extends StatelessWidget {

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

  const SettingsButton({
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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: width,
        height: height ?? 30.0,
        margin: const EdgeInsets.only(top:10.0),
        decoration: BoxDecoration(
          color: color!= null
              ? color!
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(25.0),
          border: isOutlined ? Border.all(width: 2.0,color: borderColor ?? Theme.of(context).primaryColor) : null
        ),
    
        child: InkWell(
          borderRadius: BorderRadius.circular(15.0),
          onTap:  ()=> onPressed(),
          splashColor: Theme.of(context).splashColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: prefix ?? const SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:0.0),
                child: Text(text,style:
                    textStyle ??
                    Theme.of(context).textTheme.button
                ),
              ),
              const Spacer(),
              suffix ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
