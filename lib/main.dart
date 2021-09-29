import 'package:flutter/material.dart';
import 'package:flutter_application_test/graphql/api.dart';
import 'package:flutter_application_test/login_notifier.dart';
import 'package:flutter_application_test/views/login.dart';
import 'package:flutter_application_test/views/login_page.dart';
import 'package:flutter_application_test/views/signIn_page.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

void main() {
  // final HttpLink rickAndMortyHttpLink =
  //     HttpLink('https://611b5f2b22020a00175a443a.mockapi.io/User');
  // ValueNotifier<GraphQLClient> client = ValueNotifier(
  //   GraphQLClient(
  //     link: rickAndMortyHttpLink,
  //     cache: GraphQLCache(
  //       store: InMemoryStore(),
  //     ),
  //   ),
  // );
  // var app = GraphQLProvider(
  //   client: client,
  //   child: MyApp(),
  // );
  runApp(
    StateNotifierProvider(
      create: (_) => LoginNotifier(),
      child: GraphQLProvider(
        child: MyApp(),
        client: client,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
