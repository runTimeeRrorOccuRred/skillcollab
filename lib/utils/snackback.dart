import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showCustomSnackBar(BuildContext context, {required String text, required Color color}) {
  // ScaffoldMessenger.of(context).showSnackBar(
  //   SnackBar(
  //     content: Text(text, style: const TextStyle(color: kWhite),),
  //     backgroundColor: color,
  //     action: SnackBarAction(label: "Close", onPressed: () => ScaffoldMessenger.of(context).clearSnackBars()),
  //   ),
  // );
  text.contains('Null check') 
  ? Fluttertoast.showToast(
    msg: 'There seems to be Network Issue',
    backgroundColor: color,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
  )
  : Fluttertoast.showToast(
    msg: text,
    backgroundColor: color,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
  );
}
