import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Platform.isIOS
          ? CupertinoAlertDialog(
              content: Row(
                children: [
                  const CupertinoActivityIndicator(),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Aguardá un momento...",
                    ),
                  ),
                ],
              ),
            )
          : AlertDialog(
              content: Row(
                children: [
                  const CircularProgressIndicator(),
                  Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: const Text(
                      "Aguardá un momento...",
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
