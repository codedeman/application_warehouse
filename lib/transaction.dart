import 'package:flutter/material.dart';

class Transaction{

  
  final String product_name;
  final String custome_name;
  final double price;
  final int amount;
  final DateTime date;

  Transaction({
  @required this.product_name,
  @required this.custome_name,
  @required  this.amount,
  @required  this.price,
  @required  this.date});
  
}