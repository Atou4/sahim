import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderPage extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final Color color;

  const SliderPage({Key? key, required this.title, required this.description, required this.image,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SvgPicture.asset(image,width: width * 0.8,height:250),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style:Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              description,
              style:Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}