part of '../pages.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_shop_logo_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Shop',
                  style: primaryTextStyle,
                ),
                Text(
                  'Online',
                  style: primaryTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: primaryTextColor,
            )),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
    );
  }
}
