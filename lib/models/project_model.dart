import 'package:sahim/models/association_model.dart';

class Project {
  String name;
  String imgUrl;
  CurrentTrackingStatus currentStatus;
  Association association;
  double cost;
  int rest;
  Project(this.name, this.imgUrl, this.currentStatus, this.association,
      this.cost, this.rest);
}

class DonatedProject extends Project {
  DonatedProject(
      String name,
      String imgUrl,
      CurrentTrackingStatus currentStatus,
      Association association,
      double cost,
      int rest,
      {required this.donation,
      required this.currentTrackingStatus})
      : super(name, imgUrl, currentStatus, association, cost, rest);
  double donation;
  CurrentTrackingStatus currentTrackingStatus;
}

enum CurrentTrackingStatus {
  donated,
  paymentSentToAssociation,
  projectCompleted,
}
