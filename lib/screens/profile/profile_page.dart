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
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          slivers: [
            SliverAppBar(
              expandedHeight: 140.0,
              floating: true,
              backgroundColor: SahimColors.green,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'عمار الهندي',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: SahimColors.white),
                      ),
                      Text(
                        '9 تبرعات تم طلبها مسبقا',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: SahimColors.white),
                      ),
                    ],
                  ),
                ),
                background: Stack(children: [
                  Positioned(
                    child: Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        color: SahimColors.grey,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                    ),
                    bottom: -7,
                    left: 0,
                    right: 0,
                  )
                ]),
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
