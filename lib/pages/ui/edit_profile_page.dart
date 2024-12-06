part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buttonUpdate() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'update',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget nameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'Haziq Imtiyaz',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget usernameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'iyaz',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget emailInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'haziqimtyz@gmail.com',
              fillColor: backgroundColor4,
              filled: true,
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage(
                'assets/image_profile.png',
              ),
            ),
            Text(
              'Haziq',
              style: primaryTextStyle,
            ),
            nameInput(),
            SizedBox(width: 12),
          ],
        ),
      );
    }

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 20,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      appBar: header(),
      body: content(),
    );
  }
}
