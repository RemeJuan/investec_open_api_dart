class EndpointBuilder {
  static Uri uri(String path, {Map<String, dynamic>? queryParameters,}) {
    return Uri(
      scheme: 'https',
      host: 'openapi.investec.com',
      path: path,
      queryParameters: queryParameters,
    );
  }
}
