import 'package:flutter/material.dart';
import 'package:sahim/theme/colors.dart';


class StatsCard extends StatelessWidget {
  const StatsCard({
    Key? key, required this.title, required this.count, required this.icon,
  }) : super(key: key);

  final String title;
  final int count;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: SahimColors.white,
        boxShadow: const [BoxShadow(offset: Offset(1,1),blurRadius: 5,color: Colors.black12)]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon,size: 50,color: SahimColors.green,),
          const SizedBox(height:4.0),
          Text(
            title, //dish.description,
            style: Theme.of(context).textTheme.caption,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "$count",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
