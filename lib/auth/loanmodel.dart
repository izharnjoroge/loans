import 'package:cloud_firestore/cloud_firestore.dart';

class LoanModel {
  final String? id;
  final String loantype;
  final String interestrate;
  final String maximumamount;
  final String minimumamount;

  const LoanModel({
    this.id,
    required this.loantype,
    required this.interestrate,
    required this.maximumamount,
    required this.minimumamount,
  });
  toJson() {
    return {
      "LoanType": loantype,
      "InterestRate": interestrate,
      "MaximumAmount": maximumamount,
      "MinimumAmount": minimumamount,
    };
  }

  factory LoanModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return LoanModel(
      id: document.id,
      loantype: data["LoanType"],
      interestrate: data["InterestRate"],
      maximumamount: data["MaximumAmount"],
      minimumamount: data["MinimumAmount"],
    );
  }
}
