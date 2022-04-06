import 'package:flutter/material.dart';
import 'package:sahim/screens/my_donation/tracking_donation_page.dart';
import 'package:sahim/widgets/project_card_widget.dart';

import '../../theme/colors.dart';

class MyDonationScreen extends StatelessWidget {
  const MyDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: SahimColors.green,
          automaticallyImplyLeading: true,
          title: Text("تبرعاتي",style: Theme.of(context).textTheme.headline4,),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: const [
              SizedBox(
                  height: 330,
                  child: ProjectCardWidget(
                      projectName: 'إفطار الصائم',
                      imgUrl: 'assets/img/people-sharing-some-dried-dates.jpg',
                      restToDonatePercentage: 30,
                      orgName: 'الأمل',
                      status: "تم الدفع بنجاح",
                  )),
              SizedBox(
                  height: 330,
                  child: ProjectCardWidget(
                    imgUrl: 'assets/img/down-syndrome-painting.jpg',
                    projectName: 'عناية أطفال متلازمة داون',
                    orgName: "إنسان",
                    restToDonatePercentage: 14,
                    status: "تم الإيداع للجمعية",
                  ),),
            ],
          ),
        ),
      ),
    );
  }
}
