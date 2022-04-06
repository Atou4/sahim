import 'package:sahim/models/association_model.dart';

import '../utils/tracking_utils.dart';

class Project {
  String name;
  String imgUrl;
  Association association;
  double cost;
  int rest;
  Project(this.name, this.imgUrl, this.association,
      this.cost, this.rest);
}

class DonatedProject extends Project {
  DonatedProject(
      String name,
      String imgUrl,
      Association association,
      double cost,
      int rest,
      {required this.donation,
      required this.currentTrackingStatus})
      : super(name, imgUrl, association, cost, rest);
  double donation;
  CurrentTrackingStatus currentTrackingStatus;
}

