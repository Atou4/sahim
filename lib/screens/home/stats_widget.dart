import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/card_button.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      blurRadius: 1,
      child: Container(
        height: 150,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: SahimColors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: "ProfilePicture",
              child: ClipOval(
                  child: Image.asset(
                "assets/pics/aso.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              )),
            ),
            const SizedBox(height:4.0),
            Text(
              "عدد المستفيدين", //dish.description,
              style: Theme.of(context).textTheme.caption,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "22",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
