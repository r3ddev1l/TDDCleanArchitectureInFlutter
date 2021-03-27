import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../domain/entities/number_trivia.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTrivia> getConcreteNumberTrivia(int number);
  Future<NumberTrivia> getRandomNumberTrivia();
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final http.Client client;

  NumberTriviaRemoteDataSourceImpl({@required this.client});

  @override
  Future<NumberTrivia> getConcreteNumberTrivia(int number) {
    client.get(
      'http://numbersapi.com/$number',
      headers: {
        'content-type': 'application/json',
      },
    );
  }

  @override
  Future<NumberTrivia> getRandomNumberTrivia() {}
}
