part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget menuItem(String title) {
      return Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(
              'Profile',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'account',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    (context),
                    '/edit-profile',
                  );
                },
                child: menuItem('Edit Profile'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Your order'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Help'),
              ),
              SizedBox(height: 20),
              Text(
                'general',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('Regulacy & term of service'),
              ),
              GestureDetector(
                onTap: () {},
                child: menuItem('rate App'),
              ),
            ],
          ),
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Profile',
          style: primaryTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    return ListView(
      children: [
        header(),
        content(),
      ],
    );
  }
}
