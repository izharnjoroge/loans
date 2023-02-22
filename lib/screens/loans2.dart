import 'package:flutter/material.dart';
import 'package:loans/auth/loanmodel.dart';

class LoansDetails extends StatelessWidget {
  const LoansDetails({super.key, required this.loanModel});
  final LoanModel loanModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(loanModel.loantype),
          titleTextStyle:
              const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          centerTitle: true,
          leading: const BackButton(),
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Colors.greenAccent[400],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      readOnly: true,
                      initialValue: loanModel.loantype,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: "Type",
                        labelStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: loanModel.maximumamount,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: "Maximum Amount",
                        labelStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: loanModel.minimumamount,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: "Minimun Amount",
                        labelStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: loanModel.interestrate,
                      style: const TextStyle(color: Colors.black),
                      cursorColor: Colors.green,
                      textInputAction: TextInputAction.next,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        labelText: "Interest Rate",
                        labelStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
