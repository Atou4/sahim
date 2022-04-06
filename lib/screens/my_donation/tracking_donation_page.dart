import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../theme/colors.dart';
import '../../widgets/main_button.dart';


class TrackingDonationPage extends StatelessWidget {
  const TrackingDonationPage({Key? key,required this.currentTrack}):super(key: key);
  final int currentTrack;


  Step _buildTrackStep({
    bool isActive = false,
    required String title,
    required Widget content,
    required BuildContext context,
  }) {
    return Step(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: isActive ? SahimColors.green : Colors.grey),
        ),
        isActive: isActive,
        content: content);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          foregroundColor: SahimColors.grey1,
          title: Text(
            "إجراء عمليات لمرضى السرطان",
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        body: SafeArea(
          child: Stepper(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            currentStep: currentTrack,
            steps: [
              _buildTrackStep(
                isActive: true,
                title: "تم الدفع بنجاح",
                content: Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(" لقد قمت بالتبرع بمبلغ ${500} دج"),
                      const Text(" في ${"20/04/2022"}"),
                      const Text(" المبلغ المتبقي جمعه ${30000} دج"),
                      Row(
                        children: [
                          const Text(
                            "${50}%",
                            style:
                                TextStyle(color: SahimColors.green, fontSize: 13),
                          ),
                          LinearPercentIndicator(
                            barRadius: const Radius.circular(10),
                            width: 200,
                            percent: 0.5,
                            lineHeight: 10,
                            progressColor: SahimColors.green,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MainButton(
                          text: "تبرع بالمزيد",
                          onpressed: () {},
                          textcolor: SahimColors.white,
                          buttoncolor: SahimColors.green,
                          bordercolor: SahimColors.green,
                          borderRadius: 10,
                          height: 36,
                          width: 85,
                        ),
                      ),
                      const Text(
                          "عند جمع المبلغ المتفق عليه من عند الجمعية سنقوم بإرسال المال إلى الجمعية"),
                    ],
                  ),
                ), context: context,
              ),
              _buildTrackStep(

                isActive: true,
                title: "تم الإيداع للجمعية",
                content: Container(
                  padding: const EdgeInsets.all(25),
                  child: const Text(
                      "جاري تنفيذ المشروع من قبل الجمعية سنعلمك عند إنتهاء المشروع"),
                ),
                  context :context,
              ),
              _buildTrackStep(
                isActive: true,
                title: "تم بعون الله إنجاز المشروع",
                content: Container(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(" في ${"20/04/2022"}"),
                      const Text(
                          "شكرا لك لقد ساهمت في إستفادة شخص مريض بالسرطان"),
                      const Text(""),
                      Row(
                        children: [
                          Text(
                            "${100.toInt()}%",
                            style: const TextStyle(
                                color: SahimColors.green, fontSize: 13),
                          ),
                          LinearPercentIndicator(
                            barRadius: const Radius.circular(10),
                            width: 200,
                            percent: 1,
                            lineHeight: 10,
                            progressColor: SahimColors.green,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                context: context
              ),
            ],
            onStepTapped: (_) {},
          ),
        ),
      ),
    );
  }
}
