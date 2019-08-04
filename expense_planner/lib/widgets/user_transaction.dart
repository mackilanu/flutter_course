import 'package:flutter/material.dart';

import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'New shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
     _transactions.add(newTx); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransation(_addNewTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
