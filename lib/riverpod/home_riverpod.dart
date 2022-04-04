import 'package:flutter/material.dart';
import 'package:flutter_get_post_token/components/loading_popup.dart';
import 'package:flutter_get_post_token/model/task_model.dart';
import 'package:flutter_get_post_token/service/service.dart';
import 'package:grock/grock.dart';

class HomeRiverpod extends ChangeNotifier {
  List<TaskModelDataNotComplated?> datas = [];
  final service = Service();
  bool isLoading = false;

  void getData() {
    isLoading = true;
    service.taskCall().then((value) {
      if (value != null && value.status == true) {
        datas = value.data!.notComplated!;

        isLoading = false;
        notifyListeners();
      } else {
        isLoading = false;
        notifyListeners();
        Grock.snackBar(title: "Hata", description: "Bir sorun oluştu");
      }
    });
  }
}
