import 'package:flutter/material.dart';

class AppDropDownButton extends StatefulWidget {
  final EdgeInsetsGeometry margin;

  final Function onChanged;

  final String initialValue;

  const AppDropDownButton({
    this.margin = const EdgeInsets.all(0),
    this.onChanged,
    this.initialValue,
  });

  @override
  AppDropDownButtonState createState() => new AppDropDownButtonState();
}

class AppDropDownButtonState extends State<AppDropDownButton> {
  String value;
  List<String> values = ['Мужской', 'Женский'];

  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var cont = Container(
      padding: const EdgeInsets.only(top: 4.0, left: 16.0, right: 16.0),
      margin: widget.margin,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: Colors.white,
            isExpanded: true,
            style: Theme.of(context).textTheme.headline1,
            value: value,
            hint: Text('Пол'),
            items: values.map((String value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String value) {
              onChanged(value);
            },
          ),
        ),
      ),
    );

    return _createImportantField(cont);
  }

  void onChanged(String value) {
    setState(() {
      this.value = value;
      widget.onChanged(value);
    });
  }

  Container _createImportantField(Widget textField) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 10,
            //child: Image(image: AssetImage('assets/important_field.png')),
          ),
          Expanded(child: textField),
          Container(
            width: 10,
          ),
        ],
      ),
    );
  }
}
