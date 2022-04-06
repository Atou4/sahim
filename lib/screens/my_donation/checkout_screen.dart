import 'package:flutter/material.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/card_button.dart';

import 'package:sahim/widgets/rounded_container.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: IconButton(
                  onPressed: () {
                      Navigator.pop(context);
                    },
                  icon: const Icon(Icons.arrow_forward_ios,color: SahimColors.orange,)
                        ),
                ),
            ],
                     ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                    Text("اختر خطتك",
                        style: Theme.of(context).textTheme.headline5),
              const SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Rcontainer(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 8.0,
                      ),
                      child: Column(
                        children:  <Widget>[
                          Text(
                            "200da",style:Theme.of(context).textTheme.headline3!.copyWith(color: SahimColors.grey1) ,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Rcontainer(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 8.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "500da",style:Theme.of(context).textTheme.headline3!.copyWith(color: SahimColors.grey1) ,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Rcontainer(
                      color: SahimColors.green,
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 8.0,
                      ),
                      child: Column(
                        children:  <Widget>[
                          Text(
                            "1000da",style:Theme.of(context).textTheme.headline3!.copyWith(color: SahimColors.white) ,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Rcontainer(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 8.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "2000da",style:Theme.of(context).textTheme.headline3!.copyWith(color: SahimColors.grey1) ,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Rcontainer(
                color: SahimColors.white,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/pics/baridimob.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text("Baridimob",style:Theme.of(context).textTheme.headline3!.copyWith(color: SahimColors.grey1) ,),
                  trailing:const Icon(Icons.arrow_forward_ios,color: SahimColors.grey1),
                ),
              ),
              Rcontainer(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    "assets/pics/cib.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text("CIB",style:Theme.of(context).textTheme.headline3!.copyWith(color: SahimColors.grey1) ,),
                  trailing:const Icon(Icons.arrow_forward_ios,color: SahimColors.grey1,),
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                margin:const EdgeInsets.only(top: 40.0),
                width: 300.0,
                height: 75,
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
      ),
    );
  }
}
