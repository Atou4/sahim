import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/settings_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              pinned: false,
              expandedHeight: 200,
              collapsedHeight: kToolbarHeight,
              floating: false,
              automaticallyImplyLeading: false,
              backgroundColor: SahimColors.green,
              flexibleSpace:  FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 60,
                      right: 40,
                      child: Row(
                        children: [
                          ClipOval(
                            child: Container(
                              width: 72.0,
                              height: 72.0,
                              color: Colors.white60,
                              child:
                              const Center(child: Icon(CupertinoIcons.person)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 23.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:const  [
                                Text(
                                  'محمد أحمد', //_auth.user!.displayName ??
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'تم التبرع 21500دج ', //_auth.user!.displayName ??
                                  style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -1.0,
                      child: Container(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Stack(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right:20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('المعلومات الشخصية',
                                style: Theme.of(context).textTheme.headline4),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SettingsButton(
                                onPressed: () {},
                                text: " إسم المستخدم",
                                suffix: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: SahimColors.grey1,
                                ),
                                prefix: const Icon(
                                  Icons.person,
                                  size: 20,
                                  color: SahimColors.green,
                                ),
                                color: SahimColors.grey,
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                thickness: 1.0,
                                color: SahimColors.grey1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SettingsButton(
                                onPressed: () {},
                                text: "  كلمة المرور",
                                suffix: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: SahimColors.grey1,
                                ),
                                prefix: const Icon(
                                  Icons.lock,
                                  size: 20,
                                  color: SahimColors.green,
                                ),
                                color: SahimColors.grey,
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                thickness: 1.0,
                                color: SahimColors.grey1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SettingsButton(
                                onPressed: () {},
                                text: " رقم الهاتف",
                                suffix: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: SahimColors.grey1,
                                ),
                                prefix: const Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: SahimColors.green,
                                ),
                                color: SahimColors.grey,
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                thickness: 1.0,
                                color: SahimColors.grey1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SettingsButton(
                                onPressed: () {},
                                text: " عن التطبيق",
                                suffix: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: SahimColors.grey1,
                                ),
                                prefix: const Icon(
                                  Icons.help_center,
                                  size: 20,
                                  color: SahimColors.green,
                                ),
                                color: SahimColors.grey,
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                thickness: 1.0,
                                color: SahimColors.grey1,
                              ),
                            ),
                            Text('معلومات أخرى',
                                style: Theme.of(context).textTheme.headline4),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SettingsButton(
                                onPressed: () {},
                                text: " دعوة الأصدقاء لفعل الخير",
                                suffix: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: SahimColors.grey1,
                                ),
                                prefix: const Icon(
                                  Icons.insert_invitation,
                                  size: 20,
                                  color: SahimColors.green,
                                ),
                                color: SahimColors.grey,
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                thickness: 1.0,
                                color: SahimColors.grey1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: SettingsButton(
                                onPressed: () {},
                                text: " تسجيل الخروج",
                                suffix: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                  color: SahimColors.grey1,
                                ),
                                prefix: const Icon(
                                  Icons.logout,
                                  size: 20,
                                  color: SahimColors.green,
                                ),
                                color: SahimColors.grey,
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Divider(
                                thickness: 1.0,
                                color: SahimColors.grey1,
                              ),
                            ),
                            Image.asset(
                            "assets/pics/leaf_outlined.png",
                            width: size.width * 0.35,
                            color: SahimColors.grey,
                          ),
                          ],
                        ),
                      ),
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
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
