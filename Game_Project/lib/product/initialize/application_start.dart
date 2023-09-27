
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/cupertino.dart';

import '../../firebase_options.dart';
import 'app_cache.dart';


@immutable
class ApplicationStart {
  const ApplicationStart._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    //await DeviceUtility.deviceInit();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FirebaseUIAuth.configureProviders(
      [EmailAuthProvider(), GoogleProvider(clientId: '')],
    );

    await AppCache.instance.setup();
  }
}