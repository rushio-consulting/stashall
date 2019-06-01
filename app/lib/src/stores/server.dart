import 'package:mobx/mobx.dart';

part 'server.g.dart';

class ServerStore = ServerStoreBase with _$ServerStore;

abstract class ServerStoreBase with Store {
  @observable
  String host = '127.0.0.1';

  @observable
  int port = 443;
}
