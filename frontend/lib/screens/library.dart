import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rescholar/models/rescholar_user.dart';
import 'package:rescholar/services/auth.dart';

import 'package:rescholar/widgets/build_card_list.dart';
import 'package:rescholar/widgets/header.dart';
import 'package:rescholar/widgets/navigation_drawer.dart';
import 'package:rescholar/widgets/option_bar.dart';

class Library extends StatefulWidget {
  Library({Key key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<ReScholarUser>(context);
    final AuthService _auth = AuthService();

    return Scaffold(
        backgroundColor: Colors.black87,
        drawer: NavigationDrawer(),
        appBar: Header(
            Icon(
              FluentSystemIcons.ic_fluent_library_filled,
              size: 54,
            ),
            [
              const Color(0xFFFFA740),
              const Color(0xFFFFCA8B),
            ],
            "library",
            [
              const Color(0xFFFFC27A),
              const Color(0xFF8BB6FF),
            ],
            true,
            [
              const Color(0xFF9DD0FF),
              const Color(0xFF4880DE),
            ]),
        body: user.isAnonymous == false
            ? Column(
                children: [
                  Text(
                    "What would you like to read about today, ${user.username}? ",
                    style: TextStyle(fontSize: 18, color: Color(0xFFFFC27A)),
                  ),
                  OptionBar(),
                  Expanded(child: BuildCardList()),
                ],
              )
            : Center(
                child: Container(
                  child: Column(children: [
                    InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      onTap: () async {
                        await _auth.signOut();
                        dynamic user = await _auth.signInWithGoogle();
                        if (user == null) {
                          print("Error signing in google!");
                        } else {
                          print("User has signed in successfully!");
                        }
                      },
                      child: Container(
                          height: 50,
                          width: 215,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              color: Color(0x404880DE)),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          "assets/icons/google_logo.png"),
                                      height: 25.0,
                                      width: 25.0,
                                    ),
                                    Text("Sign in using Google",
                                        style: TextStyle(fontSize: 16))
                                  ]),
                              SizedBox(height: 20.0),
                              Text(
                                  "Sign in with Google to add papers to library"),
                            ],
                          )),
                    ),
                  ]),
                ),
              ));
  }
}
