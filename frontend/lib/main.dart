import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:rescholar/re_scholar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ReScholar());
}
