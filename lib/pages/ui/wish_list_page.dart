part of '../pages.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text(
        'Favorite List',
        style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget emptyWishList() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You don\'t have dream stuff ?',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Text(
              'Lets find your favorite',
              style: primaryTextStyle,
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Explore Store',
              ),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                side: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [header(), emptyWishList()],
    );
  }
}
