import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcode/shared/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //only portrait
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: Color(0xFF00C0C5),
        // statusBarColor: Color(0xFFCED7e1),
        // statusBarColor: mainColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF00C0C5),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scholar',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: geneateRoute,
    );
  }
}
