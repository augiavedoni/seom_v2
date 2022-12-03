part of '../payment_process_screen.dart';

class _ParkingTicketDetail extends StatelessWidget {
  const _ParkingTicketDetail({
    Key? key,
    required this.icon,
    required this.label,
    required this.information,
  }) : super(key: key);

  final IconData icon;
  final String label;
  final String information;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: label,
              style: theme.textTheme.headline6?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: information,
                  style: theme.textTheme.headline6,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
