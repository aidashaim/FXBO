import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadFileButton extends StatelessWidget {
  final String text;
  final String hintText;
  final Function onTap;

  const UploadFileButton({
    Key key,
    @required this.text,
    @required this.onTap,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: DottedBorder(
        dashPattern: [8, 4],
        strokeWidth: 2,
        color: Color(0xFF5CBC47),
        child: Container(
          padding: EdgeInsets.only(top: 12),
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: <Widget>[
                ButtonTheme(
                    minWidth: double.maxFinite,
                    child: ImageIcon(
                      AssetImage('assets/ic_upload.png'),
                      size: 60,
                    )),
                Text(
                  text,
                  style: Theme.of(context).textTheme.headline2.merge(
                        TextStyle(fontSize: 20),
                      ),
                ),
                _buildHintTextWidget(context, hintText),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHintTextWidget(BuildContext context, String hintText) {
    if (hintText != null) {
      return Text(
        hintText,
        style: Theme.of(context).textTheme.headline5,
      );
    } else {
      return Container();
    }
  }
}
