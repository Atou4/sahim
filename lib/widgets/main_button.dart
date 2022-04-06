import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
   String text;
   Color textcolor;
   Color? buttoncolor;
  void Function()? onpressed;
  Color bordercolor;
  double width;

   MainButton(
      {Key? key,
      required this.text,
      required this.width,
      required this.textcolor,
      this.buttoncolor,
      required this.onpressed,
      required this.bordercolor})
      : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: 
        widget.onpressed
      ,
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 300),
        height: 50,
        width: widget.width,
        decoration: BoxDecoration(
          color: widget.buttoncolor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: widget.bordercolor, width: 1),
        ),
        child: Text(
          widget.text,
          style: Theme.of(context).textTheme.button!.copyWith(color: widget.textcolor),
        ),
      ),
    );
  }
}
