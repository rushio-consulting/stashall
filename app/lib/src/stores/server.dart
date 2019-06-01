import 'package:grpc/grpc.dart';
import 'package:mobx/mobx.dart';

part 'server.g.dart';

class ServerStore = ServerStoreBase with _$ServerStore;

abstract class ServerStoreBase with Store {
  static const stashallDefaultHost = '127.0.0.1';
  static const stashallDefaultPort = 443;

  @observable
  String host = stashallDefaultHost;

  @observable
  int port = stashallDefaultPort;

  @observable
  ClientChannel channel = ClientChannel(
    stashallDefaultHost,
    port: stashallDefaultPort,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
}
