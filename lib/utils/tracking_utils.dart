enum CurrentTrackingStatus {
  donated,
  paymentSentToAssociation,
  projectCompleted,
}


currentTrackingStepToString(CurrentTrackingStatus track){
  switch(track){
    case CurrentTrackingStatus.donated :
      return "تم الدفع بنجاح";

    case CurrentTrackingStatus.paymentSentToAssociation:
      return "تم الإيداع للجمعية";

    case CurrentTrackingStatus.projectCompleted:
      return "تم بعون الله إنجاز المشروع";
  }
}

CurrentTrackingStatus currentTrackingStepFromString(String track){
  switch(track){
    case "تم الدفع بنجاح" :
      return CurrentTrackingStatus.donated;

    case  "تم الإيداع للجمعية":
      return CurrentTrackingStatus.paymentSentToAssociation;

    case "تم بعون الله إنجاز المشروع" :
      return CurrentTrackingStatus.projectCompleted;
    default : throw Error.safeToString("currentTrackingStepFromString value is not valid");
  }
}

int currentTrackingStepFromStringToIndex(CurrentTrackingStatus track){
  switch(track){
    case CurrentTrackingStatus.donated :
      return 0;

    case CurrentTrackingStatus.paymentSentToAssociation:
      return 1;

    case CurrentTrackingStatus.projectCompleted:
      return 2;
  }
}