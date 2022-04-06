
import 'package:flutter/material.dart';
import 'package:sahim/screens/bottom_nav.dart';
import 'package:sahim/theme/colors.dart';
import 'package:sahim/widgets/main_button.dart';
import 'package:sahim/widgets/slider_page.dart';



class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    const SliderPage(
        color: SahimColors.white,
        title: "فرص تبرع متنوعة",
        description:
            "تغطي كافة مجالات الخير وتصل الى من يستحقها من الفئات الاشد احتياجا",
        image: "assets/illustrations/charity.svg"),
    const SliderPage(
        color: SahimColors.white,
        title: "طرق دفع امنة و سهلة",
        description:
            "عبر خيارات متعددة تسهل عملية التبرع",
        image: "assets/illustrations/payment.svg"),
    const SliderPage(
        color: SahimColors.white,
        title: "متابعة الاحصائيات الخاصة",
        description:
            "عبر الاطلاع على سجلات تبرعاتك السابقة من خلال حسابك الشخصي",
        image: "assets/illustrations/stats.svg"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SahimColors.white,
      //wrappit with a container
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onchanged,
              controller: _controller,
              itemCount: _pages.length,
              itemBuilder: (context, int index) {
                return _pages[index];
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(_pages.length, (int index) {
                      return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 10,
                          width: (index == _currentPage) ? 30 : 10,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: (index == _currentPage)
                                  ? SahimColors.green
                                  : SahimColors.grey1));
                    })),
                (_currentPage == (_pages.length - 1))
                    //the size of the button is 200
                    ?Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainButton(
                                width:350,
                              text: "التالي",
                              textcolor: SahimColors.white,
                              buttoncolor: SahimColors.green,
                              onpressed: () {
                                if (_currentPage == (_pages.length - 1)) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => const BottomNav()));
                                } 
                              },
                              bordercolor:SahimColors.green,
                              ),
                            ],
                          ),
                        ),
                      )
                       
                    :Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainButton(
                              width:350,  
                              text: "التالي",
                              textcolor: SahimColors.white,
                              buttoncolor: SahimColors.green,
                              onpressed: () {
                                _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      curve: Curves.easeInOutQuint);
                              },
                              bordercolor:SahimColors.green,
                              ),
                            ],
                          ),
                        ),
                      ) ,                  
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
