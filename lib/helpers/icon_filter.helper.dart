import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class IconFilterHelper {
  static IconData getIcon(String iconText) {
    if (iconText == "js") {
      return FontAwesomeIcons.js;
    } else if (iconText == 'html5') {
      return FontAwesomeIcons.html5;
    } else if (iconText == 'react') {
      return FontAwesomeIcons.react;
    } else if (iconText == 'css-alt') {
      return FontAwesomeIcons.css3Alt;
    } else if (iconText == 'node-js') {
      return FontAwesomeIcons.nodeJs;
    } else if (iconText == 'vuejs') {
      return FontAwesomeIcons.vuejs;
    } else if (iconText == 'angular') {
      return FontAwesomeIcons.angular;
    } else if (iconText == 'git-alt') {
      return FontAwesomeIcons.gitAlt;
    } else if (iconText == 'php') {
      return FontAwesomeIcons.php;
    } else if (iconText == 'python') {
      return FontAwesomeIcons.python;
    } else if (iconText == 'database') {
      return FontAwesomeIcons.database;
    } else {
      return FontAwesomeIcons.code;
    }
  }
}
