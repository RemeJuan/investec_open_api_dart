// Mocks generated by Mockito 5.0.0-nullsafety.7 from annotations
// in investec_open_api/test/data/repositories/access_token_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:investec_open_api/data/sources/access_token_remote_source.dart'
    as _i3;
import 'package:investec_open_api/domain/entities/access_token_entity.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeAccessTokenEntity extends _i1.Fake implements _i2.AccessTokenEntity {
}

/// A class which mocks [AccessTokenRemoteSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccessTokenRemoteSource extends _i1.Mock
    implements _i3.AccessTokenRemoteSource {
  MockAccessTokenRemoteSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AccessTokenEntity> getToken(
          String? clientId, String? secret) =>
      (super.noSuchMethod(Invocation.method(#getToken, [clientId, secret]),
              returnValue: Future.value(_FakeAccessTokenEntity()))
          as _i4.Future<_i2.AccessTokenEntity>);
}
