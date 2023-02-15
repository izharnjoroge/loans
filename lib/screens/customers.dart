import 'package:flutter/material.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("View Customers"),
          centerTitle: true,
          leading: const BackButton(),
          backgroundColor: Colors.green,
        ),
        body: ListView(),
      ),
    );
  }
}
