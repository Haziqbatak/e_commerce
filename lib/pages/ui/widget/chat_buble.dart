part of 'widget.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key});

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 250,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: backgroundColor3,
          border: Border.all(
            color: primaryTextColor,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shoes.png',
                  width: 64,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoes Arei V.2.0 - black',
                        style: primaryTextStyle,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        NumberFormat.currency(
                                locale: 'id-ID',
                                decimalDigits: 0,
                                symbol: 'IDR')
                            .format(75000),
                        style:
                            priceTextStyle.copyWith(color: secondaryTextColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 12,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Add To Chart',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor,
                    ),
                    backgroundColor: primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          productPreview(),
          Text(
            'Any Help ?',
            style: primaryTextStyle,
          ),
        ],
      ),
    );
  }
}
