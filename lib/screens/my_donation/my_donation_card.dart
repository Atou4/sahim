import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/card_button.dart';

class DonationCard extends StatelessWidget {
  final bool paid;
  const DonationCard({Key? key, required this.paid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropShadow(
      blurRadius: 1,
      child: Container(
        height:(paid) ?170:105,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: SahimColors.white,
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start

          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: ClipOval(
                  child: Image.asset(
                "assets/pics/aso.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              )),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "إفطار عابري السبيل في رمضان",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    "جمعية شباب الأغواط",
                    style: Theme.of(context).textTheme.bodyText2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "حملة لإفطار10 عابر سبيل في رمضان",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            Container(
                margin:const EdgeInsets.only(bottom: 50.0),
                width: 110.0,
                child:(paid)
                  ?const SizedBox(
                      height: 1,
                    )
                  : 
                  ProButton(
                onPressed: () {},
                text: "عرض التفاصيل",
                color: SahimColors.green,
              ),
              ),
              ],
            ),
            Container(
              child: (paid)
                  ? Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 1.0,
                            color: SahimColors.grey1,
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(
                      height: 1,
                    ),
            ),
            (paid)?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: SizedBox(
                  width: 120.0,
                  child:
                  ProButton(
                  onPressed: () {},
                  text: "تتبع المشروع",
                  color: SahimColors.green),
              ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: SizedBox(
                  width: 150.0,
                  child:
                  ProButton(
                  onPressed: () {},
                  text: "تم إيداع المال للجمعية",
                  color: SahimColors.orange),
              
              ),
                ),
              ],
            )
            :const SizedBox(height: 1,)
          ],
        ),
      ),
    );
  }
}
/*

 */