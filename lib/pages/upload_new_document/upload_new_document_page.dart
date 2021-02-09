import 'package:flutter/material.dart';
import 'package:fxbo/pages/documents/documents_page.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_button_alternative.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/app_drop_down_button.dart';
import 'package:fxbo/widgets/app_text_field.dart';
import 'package:fxbo/widgets/upload_file_button.dart';

class UploadNewDocumentPage extends StatefulWidget {
  @override
  _UploadNewDocumentPageState createState() => _UploadNewDocumentPageState();
}

class _UploadNewDocumentPageState extends State<UploadNewDocumentPage> {
  List<String> availableDocuments = ['ID', 'Passport'];
  List<String> types = ['Type 1', 'Type 2', 'Type 3', 'Type 4'];
  List<String> countries = ['Country 1', 'Country 2', 'Country 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'Upload New Document',
        appBar: AppBar(),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 20),
                    AppDropDownButton(
                      title: 'I want to upload',
                      hintText: 'ID/Passport',
                      values: availableDocuments,
                      onChanged: (document) {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AppTextField(
                      text: 'Date of Expiry',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AppTextField(
                      text: 'Document Number',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AppDropDownButton(
                      values: types,
                      hintText: 'Type',
                      onChanged: (type) {},
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    AppDropDownButton(
                      values: countries,
                      hintText: 'Country of Issue',
                      onChanged: (country) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    UploadFileButton(
                      text: 'Front Side',
                      hintText: 'Tap to upload or take a photo',
                      onTap: () {
                        print('tap front side');
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'We accept JPG, PNG, PDF or GIF not exceed 10MB',
                      style: Theme.of(context).textTheme.headline5.merge(
                            TextStyle(fontSize: 13.0),
                          ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    UploadFileButton(
                      text: 'Back Side',
                      hintText: 'Tap to upload or take a photo',
                      onTap: () {
                        print('tap back side');
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'We accept JPG, PNG, PDF or GIF not exceed 10MB',
                      style: Theme.of(context).textTheme.headline5.merge(
                            TextStyle(fontSize: 13.0),
                          ),
                    ),
                  ],
                ),
              ),
            ),
            AppButtonBottom(
              color: Color(0xFF5CBC47),
              text: 'Upload',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DocumentsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
