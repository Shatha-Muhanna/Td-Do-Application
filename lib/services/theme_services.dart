import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/ui/theme.dart';
class ThemeServices {

  final GetStorage _box = GetStorage();
  final _key = "isDarkMode";

   _saveThemToBox(bool isDarkMode)=> _box.write(_key, isDarkMode);
   bool _loadThemeFromBox()=> _box.read<bool>(_key)??false;

  ThemeMode get theme =>  _loadThemeFromBox()?ThemeMode.dark:ThemeMode.light;

  void switchTheme(){
       Get.changeThemeMode(_loadThemeFromBox()?ThemeMode.light:ThemeMode.dark);
       _saveThemToBox(!_loadThemeFromBox());// to save the updated mode after close the app
    }
}
