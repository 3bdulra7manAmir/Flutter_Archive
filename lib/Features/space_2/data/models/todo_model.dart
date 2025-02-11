import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier
{
  RiverpodModel({required this.counter});

  int counter;

  void counterAdd()
  {
    counter++;
    notifyListeners();
  }

  void counterSubtract(context)
  {
    if (counter > 0)
    {
      counter--;
      notifyListeners();
    }
    else
    {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Error: Less Than Zero')));
    }
  }
}