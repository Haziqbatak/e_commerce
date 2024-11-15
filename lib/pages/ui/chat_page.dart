part of '../pages.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Text(
          'Chat Page',
          style: primaryTextStyle,
        ),
      ),
    );
  }
}