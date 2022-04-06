import 'package:sahim/models/association_model.dart';

class Project {
  String name;
  String imgUrl;
  CurrentTrackingStatus currentStatus;
  Association association;
  Project(this.name, this.imgUrl, this.currentStatus, this.association);
}

enum CurrentTrackingStatus  {
  donated,
  paymentSentToAssociation,
  projectCompleted,
}

