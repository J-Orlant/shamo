import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor3,
      appBar: PreferredSize(
        child: AppBar(),
        preferredSize: Size.fromHeight(90),
      ),
    );
  }
}
