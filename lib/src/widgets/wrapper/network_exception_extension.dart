import '../../core/error_response_message.dart';
import '../../core/network_exceptions.dart';
import 'state_wrapper.dart';

extension NetworkExceptionsExtension on NetworkExceptions {
  String message() {
    final l = lookupMessages;
    return when(
      defaultError: (String error) => error,
      conflict: () => l.conflict(),
      sendTimeout: () => l.sendTimeout(),
      requestTimeout: () => l.requestTimeout(),
      notImplemented: () => l.notImplemented(),
      notAcceptable: () => l.formatException(),
      unableToProcess: () => l.unableToProcess(),
      unexpectedError: () => l.unexpectedError(),
      formatException: () => l.formatException(),
      requestCancelled: () => l.requestCancelled(),
      methodNotAllowed: () => l.methodNotAllowed(),
      serviceUnavailable: () => l.serviceUnavailable(),
      internalServerError: () => l.internalServerError(),
      noInternetConnection: () => l.noInternetConnection(),
      certificateFailed: () => l.certificateFailed(),
      notFound: (String? reason) {
        return reason ?? l.notFound();
      },
      badRequest: (_) => l.badRequest(),
      unauthorisedRequest: (String? reason) {
        return reason ?? l.unauthorisedRequest();
      },
      unprocessableEntity: (ErrorResponseMessage? errorResponseMessage) {
        return errorResponseMessage?.message ?? l.somethingWhenWrong();
      },
    );
  }

  String messageDescription() {
    final l = lookupMessages;
    return maybeWhen(
      orElse: () => l.somethingWhenWrongDesc(),
      internalServerError: () => l.internalServerErrorDesc(),
      serviceUnavailable: () => l.serviceUnavailableDesc(),
      requestTimeout: () => l.requestTimeoutDesc(),
      conflict: () => l.conflictDesc(),
      unableToProcess: () => l.unableToProcessDesc(),
      badRequest: (String? reason) {
        return reason ?? l.somethingWhenWrongDesc();
      },
      notFound: (String? reason) => reason ?? l.somethingWhenWrongDesc(),
      unauthorisedRequest: (String? reason) =>
          reason ?? l.somethingWhenWrongDesc(),
      unprocessableEntity: (ErrorResponseMessage? errorResponseMessage) =>
          errorResponseMessage?.message ?? l.somethingWhenWrongDesc(),
    );
  }

  // Widget icon() {
  //   return UXPreloadLottieAsset(
  //     package: 'barcode',
  //     lottiePath: maybeWhen(
  //       orElse: () => Assets.lotties.error.path,
  //       notFound: (_) => Assets.lotties.notFound.path,
  //       serviceUnavailable: () => Assets.lotties.maintenance.path,
  //       noInternetConnection: () => Assets.lotties.internet.path,
  //     ),
  //   );
  // }
}

extension ErrorResponseMessageExtension on ErrorResponseMessage? {
  String? message(String key) {
    return this?.errors?[key]?[0] as String?;
  }

  String parseMessageWhenNull(String key) {
    return this?.errors?[key]?[0] as String? ??
        lookupMessages.somethingWhenWrong();
  }
}
