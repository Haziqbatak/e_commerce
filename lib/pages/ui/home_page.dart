part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mike Tyson Jake Paul',
                  style: primaryTextStyle.copyWith(
                      fontSize: 24, fontWeight: semiBold),
                ),
                Text(
                  "Let's Explore Your World",
                  style: subtitleTextStyle,
                ),
              ],
            ),
            Image.asset(
              'assets/image_profile.png',
              width: 54,
              height: 54,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
