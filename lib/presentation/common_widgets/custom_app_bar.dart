import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
  });

  final String title;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              title,
              style: theme.textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
      leading: showBackButton ? null : const SizedBox(),
      iconTheme: theme.iconTheme.copyWith(color: Colors.black),
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
