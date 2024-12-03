part of '../pages.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    Widget productPreview() {
      return Container(
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor5,
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 45,
                  margin: EdgeInsets.all(
                    12,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  decoration: BoxDecoration(
                    color: backgroundColor2,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Type Message...',
                              hintStyle: subtitleTextStyle,
                            ),
                            style: primaryTextStyle,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/button_send.png',
                          width: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

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
      bottomNavigationBar: chatInput(),
    );
  }
}
