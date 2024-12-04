part of '../pages.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Wishlist page',
          style: primaryTextStyle,
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: header(),
      body: Center(
        child: Text(
          'WishList Page',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
