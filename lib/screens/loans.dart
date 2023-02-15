import 'package:flutter/material.dart';
import 'package:loans/exports.dart';

class Loans extends StatelessWidget {
  const Loans({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("View Loan Types"),
          centerTitle: true,
          leading: const BackButton(),
          backgroundColor: Colors.green,
        ),
        body: ListView(),
      ),
    );
  }
}
