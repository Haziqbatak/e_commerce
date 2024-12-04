part of 'widget.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor3,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset(
              'assets/image_shoes.png',
              width: 64,
            ),
          ),
          SizedBox(width: 12),
          Text(
            'ini adalah widsh list card',
            style: primaryTextStyle,
          ),
        ],
      ),
    );
  }
}
