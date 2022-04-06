import 'package:sahim/models/association_model.dart';
import 'package:sahim/models/project_model.dart';

import '../utils/tracking_utils.dart';

class Data{
  static Future<List<Project>> getTopProjects() async {
    Future.delayed(const Duration(milliseconds: 500));
    return [
      Project(
          'إفطار الصائم',
          'assets/img/people-sharing-some-dried-dates.jpg',
          Association("جمعية دار الرحمة", "", 102, 32, 239939, ""),23000,40),
      Project(
          'إعانة كبار السن',
          'assets/img/old_man.jpeg',
          Association("جمعية دار الرحمة", "", 102, 32, 239939, ""),23000,40),
      Project(
          'مشروع إواء المحتاجين',
          'assets/img/homeless-people.jpg',
          Association("جمعية الأمل", "", 102, 32, 239939, ""),23000,40),
      Project(
          'مشروع إواء المحتاجين',
          'assets/img/homeless-people.jpg',
          Association("جمعية الأمل", "", 102, 32, 239939, ""),23000,40),
      Project(
          'عناية أطفال متلازمة داون',
          'assets/img/down-syndrome-painting.jpg',
          Association("إنسان", "", 102, 32, 239939, ""),23000,40),
    ];
  }

  static Future<List<Association>> getAssociations() {
    throw UnimplementedError();
  }

  static Future<Association> getAssociation() {
    throw UnimplementedError();
  }

  static Future<List<DonatedProject>> getMyDonationProjects() async {
    Future.delayed(const Duration(milliseconds: 500));
    return [
      DonatedProject(
          'إفطار الصائم',
          'assets/img/people-sharing-some-dried-dates.jpg',
          Association("جمعية دار الرحمة", "", 102, 32, 239939, ""),23000,40,
          donation: 500,
          currentTrackingStatus: CurrentTrackingStatus.donated
      ),
      DonatedProject(
          'إعانة كبار السن',
          'assets/img/old_man.jpeg',
          Association("جمعية دار الرحمة", "", 102, 32, 239939, ""),23000,40,
          donation: 2000,
          currentTrackingStatus: CurrentTrackingStatus.paymentSentToAssociation
     ),

      DonatedProject(
          'مشروع إواء المحتاجين',
          'assets/img/homeless-people.jpg',
          Association("جمعية الأمل", "", 102, 32, 239939, ""),23000,40,
          donation: 500,
          currentTrackingStatus: CurrentTrackingStatus.projectCompleted
      ),];
  }
}
