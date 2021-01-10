import 'package:flutter/material.dart';
import 'package:flutter_meetup_hh_website/app.dart';
import 'package:flutter_meetup_hh_website/utils/googleapis.dart';

import 'theme.dart';

void main() {
  runApp(FMHApp());
}

class FMHApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GoogleApis.getGDriveFiles().then((value) => print(value.first.name));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: FMHTheme.themeData,
      home: App(),
    );
  }
}
