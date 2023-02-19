import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:loans/exports.dart';

class LoansController1 extends GetxController {
  final _db = FirebaseFirestore.instance;

  Future<List<LoanModel>> allLoans() async {
    final snapshot = await _db.collection("Loans").get();
    final requestLoans =
        snapshot.docs.map((e) => LoanModel.fromSnapshot(e)).toList();
    return requestLoans;
  }
}

class LoansController2 extends GetxController {
  final _loansRepo = Get.put(LoansController1());
  Future<List<LoanModel>> getAllLoans() async {
    return await _loansRepo.allLoans();
  }
}
