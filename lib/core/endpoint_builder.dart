class EndpointBuilder {
  /// Helper method for generating a complete [Uri] for use when making PAI calls.
  static Uri uri(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return Uri(
      scheme: 'https',
      host: 'openapi.investec.com',
      path: path,
      queryParameters: queryParameters,
    );
  }
}
