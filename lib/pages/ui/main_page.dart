part of '../pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget floatButton() {
    return FloatingActionButton(
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: floatButton(),
      body: Center(
        child: Text(
          'Main Page',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}
