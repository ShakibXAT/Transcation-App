

import 'dart:js_util';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //const NewTransaction({super.key});
  final Function addTx;
  final titleController = TextEditingController();
  final amountController= TextEditingController();
  NewTransaction(this.addTx);
  void submitData(){
    
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    //addTx(titleController.text,double.parse(amountController.text));

    if(enteredTitle.isEmpty || enteredAmount<=0){
         return;
    }
    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 5,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'title'),
                      controller: titleController,

                      onSubmitted: (_)=>submitData(),
                      // onChanged: (val){
                      //   // titleInput = val;
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'amount'),
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_)=>submitData(),
                      // onChanged: (val){
                      //   // amountInput=val;
                      // },
                    ),

                    TextButton(
                      onPressed: () {
                        return submitData();
                      },
                      child: Text(
                        'Add Transaction',
                        style: TextStyle(color: Colors.purple),
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}