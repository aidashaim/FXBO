import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/widgets/app_list_view_item.dart';

class UploadedPaymentDetailsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppListViewItem(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 30,
            child: Image.asset(
              'assets/ic_cards.png',
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skrill',
                  style: Theme.of(context).textTheme.headline1.merge(
                    TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
                Text(
                  '123456789',
                  style: Theme.of(context).textTheme.headline2.merge(
                    TextStyle(
                      fontSize: 12,
                      color: Color(0xFF5CBC47),
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/ic_done.png',
            width: 16,
          ),
        ],
      ),
    );
  }
}
