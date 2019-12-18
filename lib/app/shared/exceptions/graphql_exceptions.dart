import 'package:graphql/client.dart';

class GraphQlExceptions implements Exception {
  List<GraphQLError> graphQlError = [];

  ClientException clientException;
}