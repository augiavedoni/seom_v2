part of 'vehicles_carousel.dart';

class _LoadingInProgressCard extends StatelessWidget {
  const _LoadingInProgressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      height: size.height * 0.2,
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
          itemCount: 3,
          itemBuilder: (_, __) => Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const SizedBox(height: 40),
          ),
          separatorBuilder: (_, __) => const SizedBox(height: 5),
        ),
      ),
    );
  }
}
