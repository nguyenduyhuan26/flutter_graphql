import 'package:state_notifier/state_notifier.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

// class LoginNotifier extends StateNotifier<MyState> with LocatorMixin {
//   LoginNotifier() : super(MyState([], false));

//   addList(List value) {
//     state.listUser = value;
//   }

//   isLoading(bool isload) {
//     state.isLoading = isload;
//   }

//   show() {
//     print("state ${state.listUser.length}");
//   }
// }
class LoginNotifier extends StateNotifier<LoginState> with LocatorMixin {
  LoginNotifier() : super(null);

  // addResult(QueryResult value) {
  //   state.result = value;
  // }

  bool isCheck = false;

  void auth({List listUser, String username, String pass}) {
    for (var i = 0; i < listUser.length; i++) {
      if (listUser[i]["name"].toString() == username &&
          listUser[i]["rocket"].toString() == pass) {
        print("Login OK");
        isCheck = true;
        break;
      }
      isCheck = false;
    }
  }
}

// final notifier = LoginNotifier();
// void add(var value) {
//   notifier.state = value;
// }

class LoginState {
  QueryResult result;

  LoginState(this.result);
}
