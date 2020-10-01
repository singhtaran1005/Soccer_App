import 'package:flutter/material.dart';

Widget teamStat(String team, String logUrl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Image.network(
            logUrl,
            width: 54.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    ),
  );
}
