
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                  bottom: -40,
                  left: -20,
                  child: Image.asset(
                    "assets/pics/wing2.png",
                    width: size.width * 0.35,
                  ),
                ),
              Positioned(
                  bottom: -50,
                  right: 0,
                  child: Image.asset(
                    "assets/pics/wing1.png",
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
                    children: [
                      Text("أشهر المشاريع",
                          style: Theme.of(context).textTheme.headline4),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          "عرض المزيد",
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                  height: size.height * 0.03,),
                 const Center(child:  Image(height: 100,width:300, image: AssetImage('assets/pics/aya.png'),)),
                  
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("مجالات التبرع",
                          style: Theme.of(context).textTheme.headline4),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          "عرض المزيد",
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
    
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("بعض الإحصائيات",
                          style: Theme.of(context).textTheme.headline4),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          "عرض المزيد",
                          style: Theme.of(context).textTheme.overline,
                        ),
                      ),
                    ],
                  ),
          
          
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
