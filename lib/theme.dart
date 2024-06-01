import 'package:flutter/material.dart';


ThemeData LightMode = ThemeData(
brightness:Brightness.light,
colorScheme: ColorScheme.light(
  background: Colors.grey.shade400,
)
);


ThemeData DarkMode = ThemeData(
brightness:Brightness.dark,
colorScheme: ColorScheme.dark(
 background: Colors.grey.shade700,
)
);