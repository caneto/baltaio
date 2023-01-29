// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TDBusy extends StatelessWidget {
  bool busy = false;
  Widget child;

  TDBusy({
    required this.busy,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : child;
  }
}
