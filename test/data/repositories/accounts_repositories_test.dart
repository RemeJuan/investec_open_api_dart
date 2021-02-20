import 'package:investec_open_api/data/repositories/accounts_repositories.dart';
import 'package:investec_open_api/data/sources/accounts_remote_source.dart';
import 'package:investec_open_api/domain/repositories/accounts_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../fixtures/accounts/accounts_fixture.dart';
import 'accounts_repositories_test.mocks.dart';

@GenerateMocks([AccountsRemoteSource])
void main() {
  late AccountsRepository repository;
  late MockAccountsRemoteSource mockRemoteSource;

  setUp(() {
    mockRemoteSource = MockAccountsRemoteSource();
    repository = AccountsRepositoryImpl(mockRemoteSource);
  });

  group('AccessTokenRepository', () {
    test('should should return data when the remote source is successful',
        () async {
      //arrange
      when(mockRemoteSource.getAccounts()).thenAnswer(
        (_) async => accountsFixture,
      );
      //act
      final response = await repository.getAccounts();
      //assert
      verify(mockRemoteSource.getAccounts());
      expect(response, equals(accountsFixture));
    });
  });
}
