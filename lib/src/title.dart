import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Iterable<Widget> modulovalueTitle(String title, String repo) {
  return [
    ...modulovalueTitleNoGitHub(title),
    if (repo != null) //
      ...[
      SizedBox(height: 4.0),
      GestureDetector(
        onTap: () => js.context
            .callMethod("open", ["https://github.com/modulovalue/$repo"]),
        child: Text(
          "GitHub",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.grey[700],
            fontSize: 12.0,
            decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  ];
}

Iterable<Widget> modulovalueTitleNoGitHub(String title) {
  return [
    Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 42.0,
      ),
      textAlign: TextAlign.center,
    ),
    SizedBox(height: 6.0),
    GestureDetector(
      onTap: () =>
          js.context.callMethod("open", ["https://twitter.com/modulovalue"]),
      child: Text(
        "by @modulovalue",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.grey[700],
          fontSize: 12.0,
          decoration: TextDecoration.underline,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ];
}
