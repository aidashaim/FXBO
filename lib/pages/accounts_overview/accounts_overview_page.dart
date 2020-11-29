import 'package:flutter/material.dart';
import 'package:fxbo/dialog/dialog.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class AccountsOverviewPage extends StatefulWidget {
  @override
  _AccountsOverviewPageState createState() => _AccountsOverviewPageState();
}

class _AccountsOverviewPageState extends State<AccountsOverviewPage> {
  List<String> fromList = ['Standard 1', 'Standard 2'];
  List<String> toList = ['ThunderXPay', 'ThunderYPay'];
  List<String> detailsList = ['123456789', '567891234', '987654321'];
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'accounts overview',
        appBar: AppBar(),
      ),
      body: Container(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              alignment: Alignment.topCenter,
              child: ToggleButtons(
                borderColor: Theme.of(context).primaryColor,
                fillColor: Theme.of(context).primaryColor,
                borderWidth: 1.5,
                selectedBorderColor: Theme.of(context).primaryColor,
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(0),
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    alignment: Alignment.center,
                    child: Text(
                      'LIVE',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    alignment: Alignment.center,
                    child: Text(
                      'DEMO',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0),
                    ),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < isSelected.length; i++) {
                      isSelected[i] = i == index;
                    }
                  });
                },
                isSelected: isSelected,
              ),
            ),
            Flexible(
                child: ListView.builder(
                    padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 20.0),
                    scrollDirection: Axis.vertical,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    padding: EdgeInsets.all(10.0),
                                    margin: EdgeInsets.only(right: 15.0),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: new LinearGradient(
                                          colors: [
                                            const Color(0xFF99F26E),
                                            Theme.of(context).primaryColor,
                                          ],
                                          begin:
                                              const FractionalOffset(1.0, 1.0),
                                          end: const FractionalOffset(1.0, 0.0),
                                          stops: [0.0, 1.0],
                                          tileMode: TileMode.clamp),
                                    ),
                                    child: Text(
                                      'ST',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          .merge(TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w700)),
                                    )),
                                Text(
                                  '134456',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      .merge(TextStyle(
                                        fontSize: 25.0,
                                      )),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '1,000.00',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            .merge(TextStyle(
                                                fontSize: 18.0,
                                                color: Theme.of(context)
                                                    .primaryColor)),
                                      ),
                                      Text(
                                        'EUR',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2,
                                      )
                                    ],
                                  ),
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
                    })),
          ]),
        ),
      ),
      bottomNavigationBar: BottomAppBarWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFBBBBBB),
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
