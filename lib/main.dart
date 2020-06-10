import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/login/login.dart';
import 'screens/signup/signup.dart';
import 'states/currentUser.dart';
import 'utils/ourTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentUser(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: OurTheme().buildTheme(),
        home: OurLogin(),
      ),
    );
  }
}
