import 'package:flutter/material.dart';

void main() {
  // init app logging
  AppLogging();



  Catcher2(
    rootWidget: MyApp(), 
    releaseConfig: releaseOptions, 
    debugConfig: debugOptions,
    );

}


