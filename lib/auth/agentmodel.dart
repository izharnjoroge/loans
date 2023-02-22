import 'package:cloud_firestore/cloud_firestore.dart';

class AgentModel {
  final String? id;
  final String name;
  final String email;
  final String registration;
  final String phone;

  const AgentModel({
    this.id,
    required this.name,
    required this.email,
    required this.registration,
    required this.phone,
  });
  toJson() {
    return {
      "Name": name,
      "Email": email,
      "Phone": phone,
      "Registration": registration,
    };
  }

  factory AgentModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return AgentModel(
      id: document.id,
      name: data["Name"],
      email: data["Email"],
      registration: data["Registration"],
      phone: data["Phone"],
    );
  }
}
