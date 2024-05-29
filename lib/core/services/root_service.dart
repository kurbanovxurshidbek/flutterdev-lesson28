import 'package:flutter/material.dart';
import '../../di/get_it.dart';

class RootService {
  static Future<void> init() async {
    // Dependency Injection
    await initDI();

    // Database
    //await DBService.init();
  }
}