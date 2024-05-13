// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

BoxShadow CustomBoxShadow() {
  return BoxShadow(
    color: Colors.grey.withOpacity(
      0.3,
    ),
    spreadRadius: 1,
    blurRadius: 10,
    offset: const Offset(0, 3),
  );
}

List<Shadow>? CustomTextShadow(){
  return [
  const Shadow(
    color: Colors.black54,
    offset: Offset(0, -1),
    blurRadius: 1,
  ),
  const Shadow(
    color: Colors.black54,
    offset: Offset(-1, 0),
    blurRadius: 1,
  ),
  const Shadow(
    color: Colors.black54,
    offset: Offset(1, 0),
    blurRadius: 1,
  ),
  const Shadow(
    color: Colors.black54,
    offset: Offset(0, 1),
    blurRadius: 1,
  )];
}


BoxShadow CustomBoxShadowDark() {
  return BoxShadow(
    color: Colors.black.withOpacity(
      0.3,
    ),
    spreadRadius: 1,
    blurRadius: 10,
    offset: const Offset(0, 3),
  );
}
