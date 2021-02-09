import 'package:flutter/material.dart';
import 'package:fxbo/pages/documents/document_item.dart';
import 'package:fxbo/pages/upload_new_document/upload_new_document_page.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_button_alternative.dart';
import 'package:fxbo/widgets/app_drawer.dart';

class DocumentsPage extends StatefulWidget {
  @override
  _DocumentsPageState createState() => _DocumentsPageState();
}

class _DocumentsPageState extends State<DocumentsPage> {

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
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.only(
                  left: 20,
                  top: 12,
                  bottom: 12,
                ),
                scrollDirection: Axis.vertical,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return DocumentItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 12,
                  );
                },
              ),
            ),
            AppButtonBottom(
              color: Color(0xFF5CBC47),
              text: 'upload new document',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadNewDocumentPage(),
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
