part of 'widget.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 150,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            25,
          ),
        ),
        image: DecorationImage(
          image: AssetImage(
            'assets/image_shoes.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shoes',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Sepatu Gunung Arei V2',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
                color: blackColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              NumberFormat.currency(
                symbol: 'IDR',
                locale: 'id_ID',
                decimalDigits: 0,
              ).format(100000),
              style: priceTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
