import 'package:flutter/material.dart';
import 'package:fxbo/di/app_di.dart';
import 'package:fxbo/dialog/dialog.dart';
import 'package:fxbo/dialog/dialog_data.dart';
import 'package:fxbo/dialog/dialog_factory.dart';
import 'package:fxbo/models/bl/account_info.dart';
import 'package:fxbo/models/bl/currency.dart';
import 'package:fxbo/pages/accounts_overview/account_item.dart';
import 'package:fxbo/pages/accounts_overview/accounts_overview_viewmodel.dart';
import 'package:fxbo/pages/interfaces/dialog_viewer.dart';
import 'package:fxbo/widgets/app_bar_widget.dart';
import 'package:fxbo/widgets/app_drawer.dart';
import 'package:fxbo/widgets/bottom_app_bar_widget.dart';
import 'package:provider/provider.dart';

import 'create_account_dialog.dart';

class AccountsOverviewPage extends StatefulWidget {
  @override
  _AccountsOverviewPageState createState() => _AccountsOverviewPageState();
}

class _AccountsOverviewPageState extends State<AccountsOverviewPage> implements DialogViewer {
  List<String> fromList = [
    'Standard 1',
    'Standard 2',
  ];
  List<String> toList = [
    'ThunderXPay',
    'ThunderYPay',
  ];
  List<String> detailsList = [
    '123456789',
    '567891234',
    '987654321',
  ];
  List<bool> isSelected = [
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBarWidget(
        title: 'accounts overview',
        appBar: AppBar(),
      ),
      body: ChangeNotifierProvider<AccountsOverviewViewModel>(
        create: (context) => getIt.get<AccountsOverviewViewModel>()
          ..init(this)
          ..getAccounts(),
        child: Consumer<AccountsOverviewViewModel>(
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
              return _buildContent(model.accounts);
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
              color: Color(0xFFBBBBBB),
              blurRadius: 15,
            ),
          ],
        ),
        child: FloatingButtonWidget(
          onTapPlus: () {
            showGeneralDialog(
              context: context,
              pageBuilder: (context, _, __) {
                return CreateAccountDialog();
              },
              barrierColor: Colors.black.withOpacity(0.5),
              transitionDuration: Duration(milliseconds: 300),
              transitionBuilder: (context, anim1, anim2, child) {
                return SlideTransition(
                  position: Tween(
                    begin: Offset(0, 1),
                    end: Offset(0, 0),
                  ).animate(anim1),
                  child: child,
                );
              },
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }

  Widget _buildContent(List<AccountInfo> accounts) {
    if (accounts.isNotEmpty) {
      return _buildAccountsWidget(accounts);
    } else {
      return _buildEmptyAccountsWidget();
    }
  }
  
  Widget _buildAccountsWidget(List<AccountInfo> accounts) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
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
                      fontSize: 20.0,
                    ),
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
                      fontSize: 20.0,
                    ),
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
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.vertical,
              itemCount: accounts.length,
              itemBuilder: (context, index) {
                return AccountItem(
                  accountInfo: accounts[index],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 8,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyAccountsWidget() {
    return Center(
      child: Text('You have no any account. It\'s time to create first'),
    );
  }

  @override
  void showDialog(DialogData data) {
    DialogFactory.show(context, data);
  }
}
