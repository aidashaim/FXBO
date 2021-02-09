import 'package:flutter/material.dart';
import 'package:fxbo/di/app_di.dart';
import 'package:fxbo/dialog/dialog.dart';
import 'package:fxbo/models/bl/message.dart';
import 'package:fxbo/pages/messages/message_item.dart';
import 'package:fxbo/pages/messages/messages_viewmodel.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';
import 'package:provider/provider.dart';

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
      body: ChangeNotifierProvider<MessagesViewModel>(
        create: (context) => getIt.get<MessagesViewModel>()..getMessages(),
        child: Consumer<MessagesViewModel>(
          builder: (context, model, child) {
            if (model.isLoaderVisible) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (model.hasError) {
              return Center(
                child: Text('error'),
              );
            } else {
              return _buildContent(model.messages);
            }
          },
        ),
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
            //CustomAppDialogState().showAccountDialog(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }

  Widget _buildContent(List<Message> messages) {
    if (messages.isNotEmpty) {
      return _buildMessage(messages);
    } else {
      return _buildEmptyMessages();
    }
  }

  Widget _buildEmptyMessages() {
    return Center(
      child: Text('You have no messages'),
    );
  }

  Widget _buildMessage(List<Message> messages) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        child: StatefulBuilder(
          builder: (context, setState) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: MessageItem(
                    message: messages[index],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            );
          },
        ),
      ),
    );
  }
}
