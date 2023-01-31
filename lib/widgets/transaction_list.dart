import 'package:flutter/material.dart';
import 'package:transaction_app/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:transaction_app/widgets/user_transaction.dart';
import '../widgets/user_transaction.dart';

class TransactionList extends StatelessWidget {


 


  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300,
      
        child: ListView(
                  
                  children: transactions.map((tx) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.amber, width: 2)),
                          padding: EdgeInsets.all(5),
                          child: Card(
                            child: Text(
                              '\$${tx.amount?.toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: Text(
                                tx.title.toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ),
                            Card(
                              child: Text(
                                DateFormat('yyyy-mm-dd')
                                    .format(tx.date as DateTime),
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
          
                           
                          ],
                        ),
                      ],
                    );
                  }).toList(),
                ),
      
    );
  }

}
