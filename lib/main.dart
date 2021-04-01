import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:link_in_bio/constants.dart';
import 'package:link_in_bio/social_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(MyApp());
}

String viewID = "youtube-placeholder";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Davide Agostini Hub',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String socialName = "@davideagostini";
  String description =
      "Mobile Software Engineer (Android/Flutter) \nwho loves create interesting mobile apps with an eye to UI.";

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        viewID,
        (int id) => html.IFrameElement()
          ..width = '100%' // MediaQuery.of(context).size.width.toString()
          ..height = '100%' //MediaQuery.of(context).size.height.toString()
          ..src = 'https://www.youtube.com/embed/IyFZznAk69U'
          ..style.border = 'none');

    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      /*appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFEFEFE),
      ),*/
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/davide.jpg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  socialName,
                  style: normalText(
                    //color: textColor,
                    fontSize: 28,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: normalText(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      letterSpacing: 0),
                ),
                const SizedBox(
                  height: 30,
                ),
                /*Text(
                  'My latest video',
                  style: normalText(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 150,
                  height: 1,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 300,
                  width: 400,
                  child: HtmlElementView(
                    viewType: viewID,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),*/
                Text(
                  'Social links',
                  style: normalText(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 150,
                  height: 1,
                  color: Colors.grey[300],
                ),
                const SizedBox(
                  height: 30,
                ),
                SocialButton(
                  url: 'https://davideagostini.medium.com',
                  icon: MdiIcons.typewriter,
                  iconColor: Colors.black,
                  label: "Medium blog",
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://github.com/davideagostini',
                  icon: MdiIcons.github,
                  iconColor: Colors.black,
                  label: "GitHub profile",
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://www.linkedin.com/in/davideagostini/',
                  icon: MdiIcons.linkedin,
                  iconColor: Colors.blue[800],
                  label: "LinkedIn profile",
                ),
                const SizedBox(
                  height: 25,
                ),
                SocialButton(
                  url: 'https://twitter.com/davideagostini',
                  icon: MdiIcons.twitter,
                  iconColor: Colors.lightBlue,
                  label: "I'm on Twitter!",
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
