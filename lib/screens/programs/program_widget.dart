
import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/card_button.dart';

class ProgramCard extends StatelessWidget {

  const ProgramCard({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      blurRadius: 1,
      child: Container(
        height: 105,
        width:400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: SahimColors.white,
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ClipOval(
                      child: Image.asset(
                    "assets/pics/hos.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "الصحة و العلاج",
                          style: Theme.of(context).textTheme.headline3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "عدد المشاريع : 15", //dish.description,
                          style: Theme.of(context).textTheme.caption,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Expanded(
                          child: Text(
                            "تبرع في مجال الصحة و العلاج", 
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
              Container(
                margin:const EdgeInsets.only(bottom: 40.0),
                width: 120.0,
                child:
                ProButton(
                onPressed: () {},
                text: "عرض التفاصيل",
                color: SahimColors.green,
              ),
              ),
            ], 
          ),
      ),
    );
  }
}
