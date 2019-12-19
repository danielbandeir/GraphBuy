class UserQuery {
  static const String userInfo = '''
      query getUser {
        viewer {
             id
             name
             balance
          }
      }
    ''';
}