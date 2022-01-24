import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutterclone/responsive/mobile_screen_layout.dart';
import 'package:instagram_flutterclone/responsive/responsive_layout_screen.dart';
import 'package:instagram_flutterclone/responsive/web_screen_layout.dart';
import 'package:instagram_flutterclone/screens/signup_screen.dart';
import 'package:instagram_flutterclone/utils/colors.dart';

import 'screens/login_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCKkvl7xdLZ9Lxzi4NBzcvhzTNipnRgafw',
        appId: '1:802065488915:web:ea2392cfd007a049a6b3e6',
        messagingSenderId: '802065488915',
        projectId: 'instagram-clone-eb7c5',
        storageBucket: 'instagram-clone-eb7c5.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
