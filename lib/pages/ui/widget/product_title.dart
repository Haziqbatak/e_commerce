part of 'widget.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Nama Sepatu',
        style: priceTextStyle,
      ),
    );
  }
}
