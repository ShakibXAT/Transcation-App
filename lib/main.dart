import 'package:flutter/material.dart';
import 'package:transaction_app/models/transaction.dart';
import 'package:transaction_app/widgets/new_transcation.dart';
import 'package:transaction_app/widgets/transaction_list.dart';
import 'package:transaction_app/widgets/user_transaction.dart';
// ignore: duplicate_import
import 'models/transaction.dart';
import './widgets/transaction_list.dart';
import './widgets/new_transcation.dart';
import 'dart:core';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
   
  ];

  // String? titleInput;
  // String? amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Transaction Application'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  child: Card(
                    color: Colors.blue,
                    elevation: 10,
                    child: Text('Chart'),
                  ),
                ),
              UserTransaction()
              ],
            ),
        ),
        ),
      
    );
  }
}
