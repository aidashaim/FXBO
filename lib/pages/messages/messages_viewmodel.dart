import 'package:flutter/cupertino.dart';
import 'package:fxbo/models/bl/message.dart';
import 'package:fxbo/repositories/messages_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MessagesViewModel extends ChangeNotifier {
  final MessagesRepository _messagesRepository;

  MessagesViewModel(this._messagesRepository);

  List<Message> messages;
  bool hasError = false;
  bool isLoaderVisible = true;

  void getMessages() {
    _changeLoaderVisibility(true);
    _messagesRepository.getMessages().then((messages) {
      _setMessages(messages);
      _changeLoaderVisibility(false);
    }).catchError((error) {
      _changeHasError(true);
      _changeLoaderVisibility(false);
    });
  }

  void _setMessages(List<Message> messages) {
    this.messages = messages;
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
