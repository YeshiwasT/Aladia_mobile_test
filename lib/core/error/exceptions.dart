class ServerException implements Exception {
  String errorMessage;
  ServerException(
      {this.errorMessage = 'Something went wrong. Please try again later.'});
}
