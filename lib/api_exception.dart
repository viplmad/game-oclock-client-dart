part of n2t.game_oclock.client;

abstract class ApiException implements Exception {
  ApiException({required this.error, required this.errorDescription});

  String error;
  String errorDescription;

  factory ApiException.fromServer(
      int statusCode, String error, String errorDescription) {
    switch (error) {
      case InvalidParameterApiException.code:
        return InvalidParameterApiException(
            statusCode, error, errorDescription);
      case AlreadyExistsApiException.code:
        return AlreadyExistsApiException(statusCode, error, errorDescription);
      case NotFoundApiException.code:
        return NotFoundApiException(statusCode, error, errorDescription);
      case InvalidRequestTokenException.code:
        return InvalidRequestTokenException(
            statusCode, error, errorDescription);
      case InvalidGrantTokenException.code:
        return InvalidGrantTokenException(statusCode, error, errorDescription);
      case UnsupportedGrantTypeTokenException.code:
        return UnsupportedGrantTypeTokenException(
            statusCode, error, errorDescription);
      case NotSupportedApiException.code:
        return NotSupportedApiException(statusCode, error, errorDescription);
      case ForbiddenApiException.code:
        return ForbiddenApiException(statusCode, error, errorDescription);
      case UnknownErrorApiException.code:
        return UnknownErrorApiException(statusCode, error, errorDescription);
    }
    return ServerApiException(statusCode, error, errorDescription);
  }
}

class ClientApiException extends ApiException {
  ClientApiException(
      {required super.error,
      required super.errorDescription,
      this.innerException,
      this.stackTrace});

  Exception? innerException;
  StackTrace? stackTrace;

  @override
  String toString() {
    if (innerException != null) {
      return 'ApiException $error: $errorDescription (Inner exception: $innerException)\n\n$stackTrace';
    }
    return 'ApiException $error: $errorDescription';
  }
}

class DeserializationErrorApiException extends ClientApiException {
  DeserializationErrorApiException(String errorDescription,
      [Exception? innerException, StackTrace? stackTrace])
      : super(
            error: 'deserialization_error',
            errorDescription: errorDescription,
            innerException: innerException,
            stackTrace: stackTrace);
}

class ConnectionFailedApiException extends ClientApiException {
  ConnectionFailedApiException(String errorDescription,
      [Exception? innerException, StackTrace? stackTrace])
      : super(
            error: 'connection_failed',
            errorDescription: errorDescription,
            innerException: innerException,
            stackTrace: stackTrace);
}

class OperationInvalidApiException extends ClientApiException {
  OperationInvalidApiException(String errorDescription)
      : super(error: 'operation_invalid', errorDescription: errorDescription);
}

class UnknoenApiException extends ClientApiException {
  UnknoenApiException(String errorDescription,
      [Exception? innerException, StackTrace? stackTrace])
      : super(
            error: 'unknown_exception',
            errorDescription: errorDescription,
            innerException: innerException,
            stackTrace: stackTrace);
}

class ServerApiException extends ApiException {
  ServerApiException(this.statusCode, String error, String errorDescription)
      : super(error: error, errorDescription: errorDescription);

  int statusCode = 0;

  @override
  String toString() {
    return 'ApiException [$statusCode] $error: $errorDescription';
  }
}

class InvalidParameterApiException extends ServerApiException {
  static const String code = 'invalid_parameter';

  InvalidParameterApiException(super.code, super.error, super.errorDescription);
}

class AlreadyExistsApiException extends ServerApiException {
  static const String code = 'already_exists';

  AlreadyExistsApiException(super.code, super.error, super.errorDescription);
}

class NotFoundApiException extends ServerApiException {
  static const String code = 'not_found';

  NotFoundApiException(super.code, super.error, super.errorDescription);
}

class UnknownErrorApiException extends ServerApiException {
  static const String code = 'unknown_error';

  UnknownErrorApiException(super.code, super.error, super.errorDescription);
}

class NotSupportedApiException extends ServerApiException {
  static const String code = 'not_supported';

  NotSupportedApiException(super.code, super.error, super.errorDescription);
}

class ForbiddenApiException extends ServerApiException {
  static const String code = 'forbidden';

  ForbiddenApiException(super.code, super.error, super.errorDescription);
}

class InvalidRequestTokenException extends ServerApiException {
  static const String code = 'invalid_request';

  InvalidRequestTokenException(super.code, super.error, super.errorDescription);
}

class InvalidGrantTokenException extends ServerApiException {
  static const String code = 'invalid_grant';

  InvalidGrantTokenException(super.code, super.error, super.errorDescription);
}

class UnsupportedGrantTypeTokenException extends ServerApiException {
  static const String code = 'unsupported_grant_type';

  UnsupportedGrantTypeTokenException(
      super.code, super.error, super.errorDescription);
}
