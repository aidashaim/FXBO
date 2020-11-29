import 'package:flutter/material.dart';
import 'package:fxbo/dialog/dialog.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  List<String> fromList = ['Standard 1', 'Standard 2'];
  List<String> toList = ['ThunderXPay', 'ThunderYPay'];
  List<String> detailsList = ['123456789', '567891234', '987654321'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'messages',
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
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(15.0),
                            margin: EdgeInsets.only(right: 5.0),
                            width: 70.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Theme.of(context).primaryColor,
                            ),
                            child: Image.asset(
                              'assets/logo_2.png',
                              width: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 5.0),
                                width: MediaQuery.of(context).size.width * 0.67,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'FXBO',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          .merge(TextStyle(
                                            fontSize: 22.0,
                                          )),
                                    ),
                                    Text(
                                      '1 hour ago',
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    'Best Book of fgbvhjfdbh bfgr gyug bhg vg cgf ijhiu drxr bhbh ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        .merge(TextStyle(fontSize: 17.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(),
                    ],
                  ),
                );
              });
        })),
      ),
      bottomNavigationBar: BottomAppBarWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFAAAAAA),
              blurRadius: 15,
            ),
          ],
        ),
        child: FloatingButtonWidget(
          onTapPlus: () {
            AppDialogState().showAccountDialog(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}
