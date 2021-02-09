import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fxbo/models/bl/account_info.dart';
import 'package:fxbo/pages/account/account_page.dart';
import 'package:fxbo/utils/money_formatter.dart';

class AccountItem extends StatelessWidget {
  final AccountInfo accountInfo;

  const AccountItem({
    Key key,
    @required this.accountInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildIcon(context),
              SizedBox(
                width: 16,
              ),
              Text(
                accountInfo.number.toString(),
                style: Theme.of(context).textTheme.headline2.merge(
                      TextStyle(
                        fontSize: 20,
                        color: Color(0xFF636363),
                      ),
                    ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${accountInfo.currency.getSymbol()}${MoneyFormatter.format(accountInfo.balance)}",
                      style: Theme.of(context).textTheme.headline2.merge(
                            TextStyle(
                              fontSize: 18.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                    ),
                    Text(
                      "${accountInfo.currency.name}",
                      style: Theme.of(context).textTheme.headline2,
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => AccountPage()));
      },
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
        top: 7,
        bottom: 6,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(0xFF99F26E),
            Theme.of(context).primaryColor,
          ],
          begin: const FractionalOffset(1.0, 1.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Text(
        'ST',
        style: Theme.of(context).textTheme.headline4.merge(
              TextStyle(
                fontSize: 12,
              ),
            ),
      ),
    );
  }
}
