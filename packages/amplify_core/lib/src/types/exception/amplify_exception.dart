// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

part 'analytics/analytics_exception.dart';
part 'analytics/invalid_event_exception.dart';
part 'api/api_exception.dart';
part 'api/http_status_exception.dart';
part 'api/operation_exception.dart';
part 'auth/auth_exception.dart';
part 'auth/invalid_state_exception.dart';
part 'auth/not_authorized_exception.dart';
part 'auth/service_exception.dart';
part 'auth/session_expired_exception.dart';
part 'auth/signed_out_exception.dart';
part 'auth/user_cancelled_exception.dart';
part 'auth/validation_exception.dart';
part 'network_exception.dart';
part 'push/push_notification_exception.dart';
part 'storage/access_denied_exception.dart';
part 'storage/http_status_exception.dart';
part 'storage/invalid_storage_bucket_exception.dart';
part 'storage/local_file_not_found_exception.dart';
part 'storage/not_found_exception.dart';
part 'storage/operation_canceled_exception.dart';
part 'storage/path_validation_exception.dart';
part 'storage/storage_exception.dart';
part 'unknown_exception.dart';

/// {@template amplify_core.amplify_exception}
/// Thrown from top level Amplify APIs from the amplify-flutter package.
/// All other Amplify APIs throw subclasses of AmplifyException.
/// {@endtemplate}
@immutable
abstract class AmplifyException
    with
        AWSDebuggable,
        AWSEquatable<AmplifyException>,
        AWSSerializable<Map<String, Object?>>
    implements Exception {
  /// {@macro amplify_core.amplify_exception}
  const AmplifyException(
    this.message, {
    this.recoverySuggestion,
    this.underlyingException,
  });

  /// Instantiates and return a new `AmplifyException` from the
  /// serialized exception data
  static AmplifyException fromMap(Map<String, String> serializedException) {
    if (serializedException['message'] == null) {
      throw const FormatException(
        'Cannot create AmplifyException from map.  Message field is missing',
      );
    }

    return _AmplifyException(
      serializedException['message']!,
      recoverySuggestion: serializedException['recoverySuggestion'],
      underlyingException: serializedException['underlyingException'],
    );
  }

  /// A descriptive message of the problem.
  final String message;

  /// How to recover from this exception.
  final String? recoverySuggestion;

  /// Underlying cause of this exception helpful for debugging.
  final Object? underlyingException;

  @override
  List<Object?> get props => [message, recoverySuggestion, underlyingException];

  @override
  String get runtimeTypeName => 'AmplifyException';

  @override
  Map<String, Object?> toJson() => {
    'message': message,
    if (recoverySuggestion != null) 'recoverySuggestion': recoverySuggestion,
    if (underlyingException != null)
      'underlyingException': underlyingException.toString(),
  };
}

class _AmplifyException extends AmplifyException {
  const _AmplifyException(
    super.message, {
    super.recoverySuggestion,
    super.underlyingException,
  });
}
