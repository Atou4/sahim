import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahim/models/project_model.dart';
import 'package:sahim/screens/my_donation/checkout_screen.dart';
import 'package:sahim/screens/my_donation/tracking_donation_page.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/theme/sahim_icons.dart';
import 'package:sahim/screens/home/stats_widget.dart';
import '../../backend/data.dart';
import '../../widgets/project_card_widget.dart';
import 'categories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: FittedBox(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset("assets/img/logo_tmp.png"),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TrackingDonationPage(currentTrack: 1,)));
                },
                icon: const Icon(SahimIcons.happiness__smile__kindness__love_1,color: SahimColors.orange,size: 40,),
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: ListView(children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("أشهر المشاريع",
                        style: Theme.of(context).textTheme.headline4),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        "عرض المزيد",
                        style: Theme.of(context).textTheme.overline!.copyWith(color: SahimColors.orange),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 350,
                child: FutureBuilder(
                    future: Data.getTopProjects(),
                    builder: (context, snap) {
                      List<Project> projects = (snap.data as List<Project>);
                      return ListView.builder(
                        itemCount: projects.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ProjectCardWidget(
                            project: projects.elementAt(index),
                            onTap: () {
                             
                            },
                            onDonateNow: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => CheckoutPage()));
                            },
                          );
                        },
                      );
                    }),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Center(
                  child: Image(
                height: 100,
                width: 300,
                image: AssetImage('assets/pics/ahsino_ayah.png'),
              )),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("أشهر المشاريع",
                        style: Theme.of(context).textTheme.headline4),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        "عرض المزيد",
                        style: Theme.of(context).textTheme.overline!.copyWith(color: SahimColors.orange),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CatCard( title: "عدد المستفيدين", count: 640,),
                    CatCard( title: "عدد المستفيدين", count: 640,)
                  ],
                ),
              ),

              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("بعض الإحصائيات",
                    style: Theme.of(context).textTheme.headline4),
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: -40,
                    left: -20,
                    child: Image.asset(
                      "assets/pics/leaf_outlined.png",
                      width: size.width * 0.35,
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    right: -39,
                    child: Image.asset(
                      "assets/pics/leaf_solid.png",
                      width: size.width * 0.5,
                    ),
                  ),
                  Container(
                    height: 400,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GridView.count(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5),
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 12,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: const [
                        StatsCard(
                          icon: SahimIcons
                              .volunteer__charity__community__compassion,
                          title: "عدد المستفيدين",
                          count: 640,
                        ),
                        StatsCard(
                          icon: SahimIcons
                              .donation__charity__volunteer__community,
                          title: "إجمالي التبرعات",
                          count: 1302300,
                        ),
                        StatsCard(
                          icon: SahimIcons.people__love__family__happy,
                          title: "الجمعيات الناشطة",
                          count: 73,
                        ),
                        StatsCard(
                          icon: SahimIcons.kindness__love__charity__give,
                          title: "عدد التبرعات",
                          count: 1240,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ])),
      ),
    );
  }
}
