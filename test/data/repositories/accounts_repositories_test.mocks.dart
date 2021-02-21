// Mocks generated by Mockito 5.0.0-nullsafety.7 from annotations
// in investec_open_api/test/data/repositories/accounts_repositories_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:investec_open_api/data/sources/accounts_remote_source.dart'
    as _i3;
import 'package:investec_open_api/domain/entities/accounts_entity.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeAccountsEntity extends _i1.Fake implements _i2.AccountsEntity {}

/// A class which mocks [AccountsRemoteSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccountsRemoteSource extends _i1.Mock
    implements _i3.AccountsRemoteSource {
  MockAccountsRemoteSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AccountsEntity> getAccounts() =>
      (super.noSuchMethod(Invocation.method(#getAccounts, []),
              returnValue: Future.value(_FakeAccountsEntity()))
          as _i4.Future<_i2.AccountsEntity>);
}
