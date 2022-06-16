import 'package:admin_panel/model/message.dart';
import 'package:admin_panel/model/product.dart';
import 'package:admin_panel/pages/overview/widgets/info_cards.dart';
import 'package:admin_panel/provider/message_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

late MessageProvider mp;

Widget _buildMessagesPart() {
  int messageNumber = mp.getMessagesListLength;
  List<MessageModel> list = mp.getMessageList;
  return InfoCard(
    title: "Number of messages",
    value: "$messageNumber",
    topColor: Colors.lightGreen,
    onTap: () {},
  );
}

class OverViewCardsLargeScreen extends StatelessWidget {
  OverViewCardsLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mp = Provider.of<MessageProvider>(context);
    mp.getMessageData();
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
          title: "Number of orders",
          value: "15",
          topColor: Colors.orange,
          onTap: () {},
        ),
        SizedBox(
          width: _width / 64,
        ),
        _buildMessagesPart(),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Number of Shows",
          value: "66",
          topColor: Colors.red,
          onTap: () {},
        ),
        SizedBox(
          width: _width / 64,
        ),
        InfoCard(
          title: "Number of clients",
          value: "8",
          topColor: Colors.green,
          onTap: () {},
        ),
      ],
    );
  }
}
