import 'package:graphql/client.dart';
import 'package:homework/config/graphql.dart';
import 'package:homework/models/character.dart';

class CharactersGraphQL {
  /// Schema of the query
  /// Write the variable name and put the schema inside. Wrap r'''<Schema> ''';
  String _getCharacters = r'''
  query GetCharacters($page: Int){
    characters(page: $page) {
      info {
        count
        pages
        next
        prev
      }
      results {
        id
        name
        image
      }
    }
  }
  ''';

  // The function that calls the API
  Future<List<Character>> getCharacters(c) async {
    //write the document
    final options = QueryOptions(document: gql(_getCharacters), variables: {
      'page': c,
    });

    //call the api itself
    //import the graphQLCLient
    //call graphQLClient.query() if we want to make GET requests
    //call graphQLClient.mutate() if we want to make POST/DELETE/UPDATE requests
    //pass down QueryOptions inside the mutate() or query();
    final response = await graphQlClient.query(options);

    //final response = await graphQlClient.query(options);

    //check if response has no error
    if (!response.hasException) {
      //access the results

      final List<Object?> data = response.data!['characters']['results'];
      final values = data.map(
          (character) => Character.fromJson(character as Map<String, dynamic>));

      return values.toList();
    } else {
      return [];
    }
  }
}
