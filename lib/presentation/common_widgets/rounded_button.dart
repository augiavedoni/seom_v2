import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

abstract class RoundedButton extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final Size minimumSize;
  final EdgeInsets padding;
  final BorderSide? borderSide;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Color? disabledColor;
  final double opacity;
  final Color? overlay;
  final void Function()? onPressed;

  const RoundedButton(
      {Key? key,
      this.text,
      this.icon,
      EdgeInsets? padding,
      Size? minimumSize,
      this.borderSide,
      this.foregroundColor,
      this.backgroundColor,
      this.disabledColor,
      this.opacity = 1.0,
      this.overlay,
      this.onPressed})
      : assert(text != null || icon != null),
        padding = padding ?? const EdgeInsets.all(12),
        minimumSize = minimumSize ??
            ((text != null)
                ? const Size.fromHeight(0)
                : const Size.square(0.0)),
        super(key: key);

  const factory RoundedButton.translucent({
    Key? key,
    String? text,
    IconData? icon,
    EdgeInsets? padding,
    Size? minimunSize,
    Color foregroundColor,
    double opacity,
    void Function()? onPressed,
  }) = _RoundedTranslucentButton;

  const factory RoundedButton.fill({
    Key? key,
    String? text,
    IconData? icon,
    EdgeInsets? padding,
    Size? minimunSize,
    Color foregroundColor,
    Color backgroundColor,
    Color disabledColor,
    Color overlay,
    void Function()? onPressed,
  }) = _RoundedFillButton;

  const factory RoundedButton.border({
    Key? key,
    String? text,
    IconData? icon,
    EdgeInsets? padding,
    Size? minimunSize,
    Color foregroundColor,
    BorderSide borderSide,
    void Function()? onPressed,
  }) = _RoundedBorderButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(minimumSize),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
        // textStyle: MaterialStateProperty.all<TextStyle>(),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return grey;
            }

            return foregroundColor;
          },
        ),
        side: MaterialStateProperty.resolveWith<BorderSide?>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return borderSide?.copyWith(
                color: const Color(0XFFE1E1EB),
              );
            }

            return borderSide;
          },
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(padding),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return disabledColor;
            }

            return backgroundColor?.withOpacity(opacity);
          },
        ),
        overlayColor: MaterialStateProperty.all<Color>(
          overlay ?? const Color(0XFFCACAD6).withOpacity(0.24),
        ),
      ),
      onPressed: onPressed,
      child: (text == null)
          ? Icon(icon)
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(text!),
                if (icon != null) ...[
                  const SizedBox(
                    width: 8.0,
                  ),
                  Icon(
                    icon,
                    size: 20.0,
                  )
                ]
              ],
            ),
    );
  }
}

class _RoundedTranslucentButton extends RoundedButton {
  const _RoundedTranslucentButton({
    Key? key,
    String? text,
    IconData? icon,
    EdgeInsets? padding,
    Size? minimunSize,
    Color foregroundColor = const Color(0XFF3B3A45),
    Color backgroundColor = const Color(0XFFCACAD6),
    double opacity = 0.12,
    void Function()? onPressed,
  }) : super(
          key: key,
          text: text,
          icon: icon,
          padding: padding,
          minimumSize: minimunSize,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          opacity: opacity,
          onPressed: onPressed,
        );
}

class _RoundedFillButton extends RoundedButton {
  const _RoundedFillButton({
    Key? key,
    String? text,
    IconData? icon,
    EdgeInsets? padding,
    Size? minimunSize,
    Color foregroundColor = Colors.white,
    Color backgroundColor = green,
    Color disabledColor = const Color(0XFFE1E1EB),
    Color overlay = lightGreen,
    void Function()? onPressed,
  }) : super(
          key: key,
          text: text,
          icon: icon,
          padding: padding,
          minimumSize: minimunSize,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          disabledColor: disabledColor,
          overlay: overlay,
          onPressed: onPressed,
        );
}

class _RoundedBorderButton extends RoundedButton {
  const _RoundedBorderButton({
    Key? key,
    String? text,
    IconData? icon,
    EdgeInsets? padding,
    Size? minimunSize,
    Color foregroundColor = const Color(0XFF3B3A45),
    BorderSide borderSide = const BorderSide(
      color: Color(0XFF3B3A45),
    ),
    void Function()? onPressed,
  }) : super(
          key: key,
          text: text,
          icon: icon,
          padding: padding,
          minimumSize: minimunSize,
          foregroundColor: foregroundColor,
          borderSide: borderSide,
          onPressed: onPressed,
        );
}
