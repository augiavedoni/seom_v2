part of 'vehicles_carousel.dart';

class _LoadingInProgressCard extends StatelessWidget {
  const _LoadingInProgressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: black,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: NavigationToolbar.kMiddleSpacing,
      ),
      padding: const EdgeInsets.all(10),
      child: Shimmer.fromColors(
        baseColor: black,
        highlightColor: Colors.grey[200]!,
        child: ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (_, __) => Card(
            margin: EdgeInsets.zero,
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const SizedBox(height: 40),
          ),
          separatorBuilder: (_, __) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
