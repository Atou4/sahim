
import 'package:flutter/material.dart';
import 'package:sahim/screens/my_donation/my_donation_screen.dart';
import 'package:sahim/screens/programs/program_widget.dart';



class ProgramPage extends StatelessWidget {
  const ProgramPage({Key? key}) : super(key: key);

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
                      Text("المجالات المتوفرة",
                          style: Theme.of(context).textTheme.headline4),
                     const Spacer(),
                       Padding(
                        padding:const EdgeInsets.only(bottom: 10.0),
                        child: GestureDetector(
                          onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const DonationPage()));
                            },
                          child:const Image(height: 30,width:50, image: AssetImage('assets/pics/cart.png'),
                                              ),
                        ),
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
                          ProgramCard(),
                          ProgramCard(),
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
