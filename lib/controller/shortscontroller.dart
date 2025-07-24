import 'package:get/get.dart';

class Shortscontroller extends GetxController {
  var mytext = "Subscribe".obs;
  void changevalue() {
    if (mytext.value == "Subscribed✨") {
      mytext.value = "subscribe";
    } else {
      mytext.value = "Subscribed✨";
    }
  }
}
