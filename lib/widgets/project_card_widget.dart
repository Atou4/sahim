import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sahim/theme/colors.dart';

import 'main_button.dart';

class ProjectCardWidget extends StatelessWidget {


  const ProjectCardWidget(
      {Key? key,
      required this.projectName,
      required this.imgUrl,
      required this.restToDonatePercentage,
      required this.orgName})
      : super(key: key);

  final String projectName;
  final String imgUrl;
  final double restToDonatePercentage;
  final String orgName;

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width*0.85;
    double containerHeight = MediaQuery.of(context).size.height * 0.27;
    return InkWell(

      onTap: (){

      },
      child: Container(

        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [BoxShadow(offset: Offset(1,1),color: Colors.black38,blurRadius: 10)],
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: containerWidth - 20,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          imgUrl,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      )),
                ],
              ),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 5.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(projectName,style:const  TextStyle(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.1,color: Colors.black),),
                     Text(orgName,style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),),
                   ],
                 ),
                 MainButton(
                   text: "تبرع الأن",
                   onpressed: () {},
                   textcolor: SahimColors.white,
                   buttoncolor: SahimColors.green,
                   bordercolor:SahimColors.green,
                   borderRadius: 10,
                   height: 36,
                   width: 79,
                 ),
               ],
             ),
           ),
            Row(
              children: [
                Text(
                  "${restToDonatePercentage.toInt()}%",
                  style:
                  const TextStyle(color: SahimColors.green, fontSize: 13),
                ),
                Flexible(
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(10),
                    width: containerWidth - 48,
                    percent: restToDonatePercentage/100,
                    lineHeight: 10,
                    progressColor: SahimColors.green,
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
