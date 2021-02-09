import 'package:flutter/cupertino.dart';
import 'package:fxbo/models/bl/account_info.dart';
import 'package:fxbo/pages/interfaces/dialog_viewer.dart';
import 'package:fxbo/repositories/accounts_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AccountsOverviewViewModel extends ChangeNotifier {
  final AccountsRepository _accountsRepository;

  AccountsOverviewViewModel(this._accountsRepository);

  DialogViewer _dialogViewer;

  void init(DialogViewer dialogViewer) {
    this._dialogViewer = dialogViewer;
  }

  bool isLoaderVisible = true;
  bool hasError = false;
  List<AccountInfo> accounts;

  void getAccounts() {
    _changeLoaderVisibility(true);
    _accountsRepository.getAccounts().then((accounts) {
      _setAccounts(accounts);
      _changeLoaderVisibility(false);
    }).catchError((error) {
      _changeHasError(true);
      _changeLoaderVisibility(false);
    });
  }

  void _setAccounts(List<AccountInfo> accounts) {
    this.accounts = accounts;
    notifyListeners();
  }

  void _changeHasError(bool hasError) {
    this.hasError = hasError;
    notifyListeners();
  }

  void _changeLoaderVisibility(bool isVisible) {
    this.isLoaderVisible = isVisible;
    notifyListeners();
  }
}
