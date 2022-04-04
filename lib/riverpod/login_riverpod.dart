import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_get_post_token/components/loading_popup.dart';
import 'package:flutter_get_post_token/service/service.dart';
import 'package:flutter_get_post_token/views/home.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';

class LoginRiverpod extends ChangeNotifier {
  final service = Service();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final box = GetStorage();

  void fetch() {
    loadingPopup();
    service.loginCall(email: email.text, password: password.text).then((value) {
      if (value != null && value.status! == true) {
        box.write("token", value.token);
        log("Kaydedilen Token => ${box.read("token")}");
        Grock.back();
        Grock.toRemove(Home());
      } else {
        Grock.back();
        Grock.snackBar(
            title: "Hata",
            description: value?.message ?? "Bir sorun oluştu, tekrar deneyin.");
      }
    });
  }
}
