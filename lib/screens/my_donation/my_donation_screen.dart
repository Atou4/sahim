import 'package:flutter/material.dart';
import 'package:sahim/screens/my_donation/tracking_donation_page.dart';
import 'package:sahim/widgets/project_card_widget.dart';
import '../../backend/data.dart';
import '../../models/project_model.dart';
import '../../theme/colors.dart';


class MyDonationScreen extends StatelessWidget {
  const MyDonationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            "تبرعاتي",
            style: Theme.of(context).textTheme.headline4,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: SahimColors.orange,
                  )),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: FutureBuilder(
              future: Data.getMyDonationProjects(),
              builder: (context,snap){
                List<Project> projects = (snap.data as List<Project>);
                return ListView.builder(
                  itemCount: projects.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,index){
                    return Container(
                      height: 330,
                      child: ProjectCardWidget(
                        project: projects.elementAt(index),
                        status:"تم الدفع بنجاح" ,
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackingDonationPage(currentTrack: 0,)));
                        },
                        onDonateNow: () {},
                      ),
                    );
                  },
                );
              }
          ),
        ),
      ),
    );
  }
}
