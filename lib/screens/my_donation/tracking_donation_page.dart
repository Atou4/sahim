import 'package:flutter/material.dart';

class TrackingDonationPage extends StatefulWidget {
  const TrackingDonationPage({Key? key}) : super(key: key);

  @override
  State<TrackingDonationPage> createState() => _TrackingDonationPageState();
}

class _TrackingDonationPageState extends State<TrackingDonationPage> {

  int _currentTrack = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Stepper(
            currentStep: _currentTrack,
            steps: const [
              Step(title: Text("تم الدفع بنجاح"), content: Text("content why is overflow"),isActive: true),
              Step(title: Text("تم الإيداع للجمعية"), content: Text("content"),isActive: false),
              Step(title: Text("تم بعو الله إنجاز المشروع"), content: Text(""),isActive: false),
              Step(title: Text("title"), content: Text("content"),isActive: false),
            ],
            onStepTapped: (_){

            },
          ),
        ),
      ),
    );
  }
}
