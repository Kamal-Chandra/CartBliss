import 'package:get/get.dart';
import 'package:cart_bliss/app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cart_bliss/firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'data/repositories/authentication/authentication_repository.dart';

Future<void> main() async {
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await GetStorage.init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository())
  );
  runApp(const App());
}