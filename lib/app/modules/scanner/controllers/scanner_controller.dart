import 'package:flutter/material.dart';
// import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:get/get.dart';
import 'package:torch_controller/torch_controller.dart';

class ScannerController extends GetxController {
 final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
 
  final torchController = TorchController();

}
