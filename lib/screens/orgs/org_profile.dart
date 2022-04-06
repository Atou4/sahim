
import 'package:flutter/material.dart';
import 'package:sahim/screens/my_donation/my_donation_card.dart';
import 'package:sahim/screens/orgs/org_widget.dart';
import 'package:sahim/screens/programs/program_widget.dart';
import 'package:sahim/theme/colors.dart';



class DonationPage extends StatelessWidget {
  const DonationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
              bottom: -30,
              left: 0,
              child: Image.asset(
                "assets/pics/leaf_outlined.png",
                width: size.width * 0.25,
              ),
            ),
            Positioned(
              bottom: -30,
              right: -30,
              child: Image.asset( 
                "assets/pics/leaf_solid.png",
                width: size.width * 0.35,
              ),
            ),
              ListView(
            children: <Widget>[ Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text("تبرعاتي",
                          style: Theme.of(context).textTheme.headline4),
                     const Spacer(),
                       const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Icon(Icons.arrow_forward_ios,color: SahimColors.orange,)
                      ),
                    ],
                  ),
                  
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 400,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: const [
                          DonationCard(paid: true,),
                        ],
                      ),
                    ),
                  ],
                )
          
          
                ],
              ),
            ),
            ]
          ),
            ],)
        ),
      ),
    );
  }
}
