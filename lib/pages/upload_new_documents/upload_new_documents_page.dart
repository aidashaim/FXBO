import 'package:flutter/material.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';

class UploadNewDocumentsPage extends StatefulWidget {
  @override
  _UploadNewDocumentsPageState createState() => _UploadNewDocumentsPageState();
}

class _UploadNewDocumentsPageState extends State<UploadNewDocumentsPage> {
  final mainColor = Color(0xFF5CBC47);
  List<String> iddList = ['ID/Password', 'ID'];
  List<String> typeeList = ['Type', 'Type 1'];
  List<String> countrList = ['Country of Issue', 'Country'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBarWidget(
          title: 'Upload New Documents',
          appBar: AppBar(),
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0),
                AppDropDownButton(
                    title: 'I want to upload',
                    initialValue: 'ID/Password',
                    itemsList: iddList,
                    hintText: ''),
                AppTextField(
                  text: 'Date of Expiry',
                ),
                AppTextField(
                  text: 'Document Number',
                ),
                AppDropDownButton(
                    initialValue: 'Type', itemsList: typeeList, hintText: ''),
                AppDropDownButton(
                    initialValue: 'Country of Issue',
                    itemsList: countrList,
                    hintText: ''),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: mainColor)),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: double.maxFinite,
                          child: IconButton(
                            iconSize: 60.0,
                            icon: Image.asset(
                              'assets/uploadIcon.png',
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          'Front Side',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .merge(TextStyle(fontSize: 20.0)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Tap to upload or take a photo',
                            style: Theme.of(context).textTheme.headline5)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('We accept JPG, PNG, PDF or GIF not exceed 10MB',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .merge(TextStyle(fontSize: 13.0))),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2.0,
                          style: BorderStyle.solid,
                          color: mainColor)),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Column(
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: double.maxFinite,
                          child: IconButton(
                            iconSize: 60.0,
                            icon: Image.asset(
                              'assets/uploadIcon.png',
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          'Back Side',
                          style: Theme.of(context)
                              .textTheme
                              .headline2
                              .merge(TextStyle(fontSize: 20.0)),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Tap to upload or take a photo',
                            style: Theme.of(context).textTheme.headline5)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('We accept JPG, PNG, PDF or GIF not exceed 10MB',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .merge(TextStyle(fontSize: 13.0))),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomButton(
          text: 'Upload',
          onTap: () {},
        ));
  }
}
