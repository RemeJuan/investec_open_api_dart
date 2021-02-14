import 'package:investec_open_api/core/endpoint_builder.dart';
import 'package:test/test.dart';

void main() {
  group('EndpointBuilder', () {
    test('Returns valid string without Query Params', () {
      final result = EndpointBuilder.uri('/details');
      final expected = Uri.parse('https://openapi.investec.com/details');

      expect(result, expected);
    });

    test('Returns valid string with Query Params', () {
      final result = EndpointBuilder.uri(
        'details',
        queryParameters: <String, dynamic>{'id': 'mock-id'},
      );
      final expected =
          Uri.parse('https://openapi.investec.com/details?id=mock-id');

      expect(result, expected);
    });
  });
}
