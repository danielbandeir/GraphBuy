import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql/client.dart';


class Constants {
  HttpLink _httpLink;
  AuthLink _authLink;

  Link getLink() {
    _httpLink = HttpLink(
      uri: DotEnv().env['LINK_GRAPH'],
    );

    _authLink = AuthLink(
      getToken: () => 'Bearer ${DotEnv().env['TOKEN']}',
    );

    return _authLink.concat(_httpLink);
  }

}