import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common_widgets/rounded_button.dart';

class FeedbackButton {
  const FeedbackButton({
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;
}

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({
    Key? key,
    required this.mainImagePath,
    required this.title,
    this.description,
    this.willPop = true,
    this.onWillPop,
    required this.primaryButton,
    this.secondaryButton,
    this.showClose = false,
    this.onClose,
  }) : super(key: key);

  final String mainImagePath;
  final String title;
  final String? description;
  final bool willPop;
  final void Function()? onWillPop;
  final FeedbackButton primaryButton;
  final FeedbackButton? secondaryButton;
  final bool showClose;
  final void Function()? onClose;

  static Route<T> route<T>({
    Key? key,
    required String mainImagePath,
    required String title,
    String? description,
    bool willPop = true,
    void Function()? onWillPop,
    required FeedbackButton primaryButton,
    FeedbackButton? secondaryButton,
    bool showClose = false,
    void Function()? onClose,
  }) =>
      MaterialPageRoute<T>(
        builder: (_) => FeedbackScreen(
          key: key,
          mainImagePath: mainImagePath,
          title: title,
          description: description,
          willPop: willPop,
          onWillPop: onWillPop,
          primaryButton: primaryButton,
          secondaryButton: secondaryButton,
          showClose: showClose,
          onClose: onClose,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(
              NavigationToolbar.kMiddleSpacing,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    children: [
                      const Spacer(),
                      FractionallySizedBox(
                        widthFactor: 0.5,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: SvgPicture.asset(mainImagePath),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      if (description != null) ...[
                        const SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: NavigationToolbar.kMiddleSpacing,
                          ),
                          child: Text(
                            description!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                      const Spacer(flex: 2),
                      RoundedButton.fill(
                        text: primaryButton.text,
                        onPressed: primaryButton.onPressed,
                      ),
                      if (secondaryButton != null) ...[
                        const SizedBox(height: 8.0),
                        RoundedButton.translucent(
                          text: secondaryButton!.text,
                          onPressed: secondaryButton!.onPressed,
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        onWillPop?.call();
        return willPop;
      },
    );
  }
}
