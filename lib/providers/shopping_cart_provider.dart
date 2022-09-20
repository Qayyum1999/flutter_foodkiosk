import 'package:flutter/material.dart';
import 'package:foodkiosk/model/product_model.dart';

List<Choice> selectedchoices = <Choice>[];

class ShoppingCart with ChangeNotifier {
  int _ordersNumber = 0;
  // int _totalOrdersNumber = 0;

  double _totalPriceNumber = 0;
  // int _selectedBNBItem = 0;
  // int _selectedIndexOfMenuList = 0;
  int _amountOfFood = 1;

  String _newordermethod = '?';
  String _newpaymentmethod = '?';

  void ordermethodprovider(selectedordermethod) {
    _newordermethod = selectedordermethod;
    notifyListeners();
  }

  String get newordermethod => _newordermethod;

  void paymentmethodprovider(selectedpaymentmethod) {
    _newpaymentmethod = selectedpaymentmethod;
    notifyListeners();
  }

  String get newpaymentmethod => _newpaymentmethod;

  void increaseOrderNumber() {
    //bezakan order list stiap card dkt listview dengan bilangan item
    _ordersNumber++; //bilangan card widget length
    // _totalOrdersNumber++; //bilangan selected item
    print(selectedchoices);
    notifyListeners();
  }

  void decreasOrderNumber() {
    _ordersNumber--;
    // _totalOrdersNumber--;

    print(selectedchoices);
    notifyListeners();
  }

  int get ordersNumber => _ordersNumber;

  // int get totalOrdersNumber => _totalOrdersNumber;

  // void bnBItem(int index) {
  //   _selectedBNBItem = index;
  //   notifyListeners();
  // }

  // int get selectedBNBItem => _selectedBNBItem;

  // void setSelectedIndex(int i) {
  //   _selectedIndexOfMenuList = i;
  //   print(selectedIndexOfMenuList);
  //   notifyListeners();
  // }

  // int get selectedIndexOfMenuList => _selectedIndexOfMenuList;

  // void increaseAmountOfFood(Choice item) {
  //   _amountOfFood = int.parse(item.quantity);
  //   _amountOfFood++;
  //   _totalOrdersNumber++;

  //   notifyListeners();
  // }

  // void decreaseAmountOfFood(Choice item) {
  //   _amountOfFood = int.parse(item.quantity);
  //   _amountOfFood--;
  //   _totalOrdersNumber--;

  //   notifyListeners();
  // }

  // int get amountOfFood => _amountOfFood;

  void addselecteditem(Choice choice) {
    selectedchoices.add(choice);
    print(selectedchoices);
    notifyListeners();
  }

  void removeselecteditem(index) {
    selectedchoices.removeAt(index);
    print(selectedchoices);
    notifyListeners();
  }

  void calculateAddTotalPrice(int amount, double price) {
    _totalPriceNumber += (amount * price);
    notifyListeners();
  }

  void calculateSubTotalPrice(int amount, double price) {
    _totalPriceNumber -= (amount * price);
    notifyListeners();
  }

  double get totalPriceNumber => _totalPriceNumber;

  void reset() {
    _ordersNumber = 0;
    // _totalOrdersNumber = 0;

    _totalPriceNumber = 0;
    _amountOfFood = 1;

    _newordermethod = '?';
    _newpaymentmethod = '?';
    selectedchoices.clear();
    print(selectedchoices);

    notifyListeners();
  }
}
