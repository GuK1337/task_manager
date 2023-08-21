enum RequestType {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  head('HEAD'),
  patch('PATCH');

  const RequestType(this.method);

  final String method;

  @override
  String toString() => method;
}
