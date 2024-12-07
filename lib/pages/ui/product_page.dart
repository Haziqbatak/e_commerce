part of '../pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = 0;

  List imagesProduct = [
    'assets/image_shoes1.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Shoes Arai V.2.0 - No Limit',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Mountain - Hiking',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  NumberFormat.currency(
                          locale: 'id-ID', decimalDigits: 0, symbol: 'IDR')
                      .format(75000),
                  style: priceTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(color: backgroundColor3),
                  child: Icon(
                    Icons.favorite,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget indicatorBar(int index) {
      return Container(
        height: 10,
        width: currentIndex == index ? 30 : 10,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
            color: currentIndex == index ? priceColor : Colors.white,
            borderRadius: currentIndex == index
                ? BorderRadius.circular(10)
                : BorderRadius.circular(5),
            border: Border.all(color: priceColor)),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.shopping_bag,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: imagesProduct
                .map(
                  (elemen) => Image.asset(
                    elemen,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: 210,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              autoPlay: true,
              enlargeCenterPage: true,
              autoPlayInterval: Duration(seconds: 3),
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  for (var i = 0; i < imagesProduct.length; i++)
                    indicatorBar(i),
                ],
              )
            ],
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
