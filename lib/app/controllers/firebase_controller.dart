import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController
    with StateMixin<Map<String, dynamic>> {
  @override
  void onInit() {
    super.onInit();

    change(null, status: RxStatus.loading());

    fetchDataFirebase();
  }

  Future<void> fetchDataFirebase() async {
    FirebaseFirestore.instance.doc("/tickets/ticketbus").get().then((data) {
      change(data.data(), status: RxStatus.success());
    }, onError: (err) => change(null, status: RxStatus.loading()));
  }
}
