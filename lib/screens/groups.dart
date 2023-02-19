import 'package:flutter/material.dart';
import 'package:loans/exports.dart';

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          leading: const BackButton(),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Contact(
                  onPressed: () {},
                  butttonText: "Add Group",
                  icon: const Icon(Icons.note),
                ),
              ),
            ],
          ),
        ),
        body: ListView(),
      ),
    );
  }
}
