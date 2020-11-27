import 'package:flutter/material.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class DocumentsPage extends StatefulWidget {
  @override
  _DocumentsPageState createState() =>
      _DocumentsPageState();
}

class _DocumentsPageState
    extends State<DocumentsPage> {
  final mainColor = Color(0xFF5CBC47);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'Documents',
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                              margin: EdgeInsets.only(right: 5.0),
                              width: 60.0,
                              child: Image.asset(
                                'assets/pdfIcon.png',
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.67,
                                  child: Row(
                                    //mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'ID/Passport',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            .merge(TextStyle(
                                              fontSize: 19.0,
                                            )),
                                      ),
                                      Image.asset(
                                        'assets/plusIcon.png',
                                        width: 20.0,
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
                                      'uploaded on 21 March',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2
                                          .merge(TextStyle(
                                              fontSize: 17.0,
                                              color: mainColor)),
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
          }))),
      bottomNavigationBar: BottomButton(
        text: 'upload new document',
        onTap: () {},
      ),
    );
  }
}
