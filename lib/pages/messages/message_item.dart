import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/models/bl/message.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildIcon(context),
        SizedBox(
          width: 12,
        ),
        _buildContent(context),
      ],
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      ),
      child: Image.asset(
        'assets/logo_2.png',
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 40 - 40 - 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                message.title,
                style: Theme.of(context).textTheme.subtitle1.merge(
                      TextStyle(
                        fontSize: 20,
                      ),
                    ),
              ),
              Text(
                _buildTimeHasPassedText(message.date),
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF9e9e9e),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            message.text,
            style: Theme.of(context).textTheme.headline2.merge(
                  TextStyle(fontSize: 13),
                ),
          ),
        ],
      ),
    );
  }

  String _buildTimeHasPassedText(DateTime dateTime) {
    final DateTime now = DateTime.now();
    final Duration diff = dateTime.difference(now);
    if (diff.inMinutes == 0) {
      return "${diff.inSeconds} second ago";
    } else if (diff.inHours == 0) {
      return "${diff.inMinutes} minutes ago";
    } else if (diff.inDays == 0) {
      return "${diff.inHours} hours ago";
    } else {
      return "${diff.inDays} days ago";
    }
  }
}
