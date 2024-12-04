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
      child: Text(
        'ini adalah widsh list card',
        style: primaryTextStyle,
      ),
    );
  }
}
