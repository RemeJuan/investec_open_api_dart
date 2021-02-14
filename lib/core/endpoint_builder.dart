class EndpointBuilder {
  static Uri _uri(String path, {Map<String, dynamic>? queryParameters,}) {
    return Uri(
      scheme: 'https',
      host: 'openapi.investec.com',
      path: path,
      queryParameters: queryParameters,
    );
  }

  static String url(String path, {Map<String, String>? queryParameters,}) {
    return _uri(
      path,
      queryParameters: queryParameters,
    ).toString();
  }
}
