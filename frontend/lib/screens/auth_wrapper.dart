import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rescholar/screens/Authentication/authenticate.dart';
import '../models/user.dart';
import 'library.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserR>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Library();
    }
  }
}