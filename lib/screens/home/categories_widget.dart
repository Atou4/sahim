import 'package:flutter/material.dart';
import 'package:sahim/screens/my_donation/checkout_screen.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/card_button.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 220,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: SahimColors.white,
          boxShadow: const [
            BoxShadow(
                offset: Offset(1, 1), blurRadius: 5, color: Colors.black12)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipOval(
              child: Image.asset(
            "assets/pics/hos.png",
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          )),
          const SizedBox(height: 4.0),
          Text(
            "الصحة والعلاج",
            style: Theme.of(context).textTheme.headline3,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            "تبرع في مجال الصحة و العلاج",
            style: Theme.of(context).textTheme.caption,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "عدد المشاريع",
                        style: Theme.of(context).textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "20",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: SahimColors.orange),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: SahimColors.grey1,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "إجمالي التبرعات",
                        style: Theme.of(context).textTheme.bodyText1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "5000da",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: SahimColors.orange),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 120.0,
            child: ProButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) =>  CheckoutPage()));
              },
              text: "تبرع الان",
              color: SahimColors.green,
            ),
          ),
        ],
      ),
    );
  }
}
