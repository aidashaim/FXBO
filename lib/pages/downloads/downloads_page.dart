import 'package:flutter/material.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_button_alternative.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class DownloadsPage extends StatefulWidget {
  @override
  _DownloadsPageState createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  final mainColor = Color(0xFF5CBC47);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'Downloads',
        appBar: AppBar(),
      ),
      body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(child: StatefulBuilder(builder: (context, setState) {
            return ListView.builder(
                padding: EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0),
                scrollDirection: Axis.vertical,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5.0),
                            margin: EdgeInsets.only(right: 25.0),
                            width: 70.0,
                            child: Image.asset(
                              'assets/MT4Icon.png',
                            ),
                          ),
                          Text(
                            'Metatrader 4'.toUpperCase(),
                            style: Theme.of(context).textTheme.headline1.merge(TextStyle(
                                  fontSize: 20.0,
                                )),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: AppButtonBottom(
        color: Color(0xFF5CBC47),
        text: 'tap item to download',
        onTap: () {},
      ),
    );
  }
}
