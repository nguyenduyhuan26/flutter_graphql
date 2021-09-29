import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink rickAndMortyHttpLink = HttpLink(
  'https://api.spacex.land/graphql/',
);
ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    link: rickAndMortyHttpLink,
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
  ),
);
final String getUserQuery = """
{
  users {
    name
    rocket
  }
}
""";

// String getQuery({String username, String password}) {
//   return """
// {
//   users(where: {name: {_eq: $username}, rocket: {_eq: $password}}) {
//    name
//     rocket
    
//   }
// }
// """;
// }
