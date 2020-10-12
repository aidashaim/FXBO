import 'package:flutter/material.dart';

class AppListView extends StatefulWidget {
  final List<String> itemsList;

  const AppListView({
    this.itemsList,
  });

  @override
  AppListViewState createState() => new AppListViewState();
}

class AppListViewState extends State<AppListView> {
  final darkColor = Color(0xFF636363);
  final mainColor = Color(0xFF5CBC47);

  ListView _buildListView() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text('Message #$index', style: TextStyle()),
          subtitle: Text('Subtitle'),
          leading: Icon(Icons.alarm),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
            children: [
            Icon(Icons.alarm),
        ],
        ),
        Column(
          children: [
            Text('Message #', style: TextStyle()),
            Text('1 hour ago'),
          ],
        ),
        //_buildListView(),
      ]
    );
  }
}
