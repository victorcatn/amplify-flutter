// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/jwt/src/token.dart';
import 'package:amplify_core/amplify_core.dart';

/// Cognito-specific claims for access and ID tokens.
///
/// References:
/// - [Cognito ID Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
/// - [Cognito Access Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
extension CognitoToken on JsonWebToken {
  /// The Cognito user ID.
  ///
  /// References:
  /// - [Cognito ID Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
  /// - [Cognito Access Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  String get userId => claims.subject!;

  /// The `auth_time` claim contains the time when the authentication occurred.
  /// Its value is a JSON number representing the number of seconds from
  /// `1970-01-01T0:0:0Z` as measured in UTC format.
  ///
  /// On refreshes, `auth_time` represents the time when the original
  /// authentication occurred, not the time when the token was issued.
  ///
  /// References:
  /// - [Cognito ID Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
  /// - [Cognito Access Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  DateTime get authTime {
    final authTime = claims.customClaims['auth_time'] as num;
    return DateTime.fromMillisecondsSinceEpoch(
      (authTime * 1000).truncate(),
      isUtc: true,
    );
  }

  /// The `token_use` claim describes the intended purpose of this token.
  ///
  /// Its value is always `id` in the case of the ID token and `access` in
  /// the case of the access token.
  ///
  /// References:
  /// - [Cognito ID Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
  /// - [Cognito Access Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  String get tokenUse => claims.customClaims['token_use'] as String;

  /// The originating JWT identifier, from the time when the original
  /// authentication occurred.
  ///
  /// References:
  /// - [Cognito ID Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
  /// - [Cognito Access Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  String get originJti => claims.customClaims['origin_jti'] as String;
}

/// Cognito-specific access token claims.
///
/// References:
/// - [Cognito Access Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
extension CognitoAccessToken on JsonWebToken {
  /// The Cognito username.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  String get username => claims.customClaims['username'] as String;

  /// The `cognito:groups` claim is a list of groups the user belongs to.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  List<String> get groups =>
      (claims.customClaims['cognito:groups'] as List?)?.cast() ?? const [];

  /// {@template amplify_auth_cognito.cognito_scope}
  /// The `scope` claim is a list of Oauth 2.0 scopes that define what access
  /// the token provides.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-access-token.html)
  /// {@endtemplate}
  String get scope => claims.customClaims['scope'] as String;

  /// {@macro amplify_auth_cognito.cognito_scope}
  List<String> get scopes => scope.split(' ');
}

/// Standard OIDC and Cognito-specific ID token claims.
///
/// References:
/// - [Cognito ID Tokens](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
/// - [OpenID Connect Core: ID Token](https://openid.net/specs/openid-connect-core-1_0.html#IDToken)
/// - [OpenID Connect Core: Standard Claims](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
extension CognitoIdToken on JsonWebToken {
  /// The Cognito username.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
  String get username => claims.customClaims['cognito:username'] as String;

  /// The user's preferred postal address.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get address => claims.customClaims['address'] as String?;

  /// The user's birthday, represented as an ISO 8601 YYYY-MM-DD format.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get birthdate => claims.customClaims['birthdate'] as String?;

  /// The user's preferred e-mail address.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get email => claims.customClaims['email'] as String?;

  /// Whether the user's preferred e-mail address has been verified.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  bool? get emailVerified => claims.customClaims['email_verified'] as bool?;

  /// Surname(s) or last name(s) of the user.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get familyName => claims.customClaims['family_name'] as String?;

  /// The user's gender.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get gender => claims.customClaims['gender'] as String?;

  /// Given name(s) or first name(s) of the user.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get givenName => claims.customClaims['given_name'] as String?;

  /// The user's locale, represented as a BCP47 language tag, e.g. `en-US`.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get locale => claims.customClaims['locale'] as String?;

  /// Middle name(s) of the user.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get middleName => claims.customClaims['middle_name'] as String?;

  /// The user's full name in displayable form including all name parts,
  /// possibly including titles and suffixes, ordered according to the user's
  /// locale and preferences.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get name => claims.customClaims['name'] as String?;

  /// Casual name of the user that may or may not be the same as their given
  /// name.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get nickname => claims.customClaims['nickname'] as String?;

  /// The user's preferred telephone number.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get phoneNumber => claims.customClaims['phone_number'] as String?;

  /// Whether the user's preferred telephone number has been verified.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  bool? get phoneNumberVerified =>
      claims.customClaims['phone_number_verified'] as bool?;

  /// URL of the user's profile picture.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get picture => claims.customClaims['picture'] as String?;

  /// The username by which the user wishes to be referred to.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get preferredUsername =>
      claims.customClaims['preferred_username'] as String?;

  /// URL of the user's profile page.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get profile => claims.customClaims['profile'] as String?;

  /// The time the user's information was last updated.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  DateTime? get updatedAt {
    final updatedAt = claims.customClaims['updated_at'] as num?;
    if (updatedAt == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(
      (updatedAt * 1000).truncate(),
      isUtc: true,
    );
  }

  /// URL of the user's Web page or blog.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get website => claims.customClaims['website'] as String?;

  /// A string from the [zoneinfo](https://www.iana.org/time-zones) time zone
  /// database representing the user's time zone, e.g. `America/Los_Angeles`.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  String? get zoneinfo => claims.customClaims['zoneinfo'] as String?;

  /// Standard Cognito user pool attributes.
  ///
  /// [Reference](https://openid.net/specs/openid-connect-core-1_0.html#StandardClaims)
  Map<CognitoUserAttributeKey, Object> get standardAttributes =>
      Map.fromEntries(
        CognitoUserAttributeKey.values
            .where((key) => claims.customClaims.containsKey(key.key))
            .map((key) => MapEntry(key, claims.customClaims[key.key]!)),
      );

  /// Custom Cognito user pool attributes.
  ///
  /// User pool custom attributes are always prefixed with a `custom:` prefix.
  ///
  /// [Reference](https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-id-token.html)
  Map<CognitoUserAttributeKey, Object> get customAttributes => Map.fromEntries(
    claims.customClaims.entries
        .where((entry) => CognitoUserAttributeKey.hasCustomPrefix(entry.key))
        .map(
          (entry) => MapEntry(
            CognitoUserAttributeKey.custom(entry.key),
            entry.value ?? '',
          ),
        ),
  );
}
