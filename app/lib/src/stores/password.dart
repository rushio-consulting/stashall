import 'package:mobx/mobx.dart';
import 'package:generated_io/generated_io.dart';

part 'password.g.dart';

class PasswordsStore = PasswordsStoreBase with _$PasswordsStore;

abstract class PasswordsStoreBase with Store {
  @observable
  ObservableList<Password> passwords = ObservableList<Password>();
}
