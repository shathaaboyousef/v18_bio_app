
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{
  void showSnakBar({required String massage , bool error = false}) {

    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(massage), backgroundColor: error? Colors.red: Colors.blue,
      duration: Duration(seconds: 3),

      behavior: SnackBarBehavior.floating, // flixing
      margin: EdgeInsets.all(
          20), //المارجن والودث فقط تستخدم بوجود البيهيفير ولازم بس وحدة منهم
      //width: 20,
      //padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 8,
      dismissDirection: DismissDirection.startToEnd,
      onVisible: ()=> print('Done'),
      action: SnackBarAction(label: 'Back', onPressed: (){print(" delete it shatha");}),
    ));
  }
}