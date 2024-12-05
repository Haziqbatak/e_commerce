part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem() {
      return Row(
        children: [
          Text(
            'Profile',
            style: primaryTextStyle,
          )
        ],
      );
    }

    Widget content() {
      return Expanded(
        child: Column(
          children: [
            menuItem(),
            menuItem(),
            menuItem(),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Profile',
          style: primaryTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
