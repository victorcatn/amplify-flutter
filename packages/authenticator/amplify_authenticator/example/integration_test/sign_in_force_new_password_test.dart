// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';
import 'utils/test_utils.dart';

// This test follows the Amplify UI feature "sign-in-force-new-password"
// https://github.com/aws-amplify/amplify-ui/blob/main/packages/e2e/features/ui/components/authenticator/sign-in-force-new-password.feature

void main() {
  testRunner.setupTests();

  group('Sign In with Force New Password flow', () {
    late PhoneNumber phoneNumber;
    late String password;

    setUp(() async {
      // Given I'm running the example
      // "ui/components/authenticator/sign-in-with-phone"
      await testRunner.configure(environmentName: 'sign-in-with-phone');

      phoneNumber = generateUSPhoneNumber();
      password = generatePassword();
      await adminCreateUser(
        phoneNumber.toE164(),
        password,
        verifyAttributes: true,
        attributes: {AuthUserAttributeKey.phoneNumber: phoneNumber.toE164()},
      );
    });

    // Scenario: Sign in using a valid phone number and password and user is in
    // a FORCE_CHANGE_PASSWORD state
    testWidgets(
      'Sign in using a valid phone number and password and user is in a '
      'FORCE_CHANGE_PASSWORD state',
      (WidgetTester tester) async {
        final po = SignInPage(tester: tester);
        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInNewPassword,
            emitsDone,
          ]),
        );

        // When I type my "phone number" with status "FORCE_CHANGE_PASSWORD"
        await po.enterUsername(phoneNumber.withOutCountryCode());

        // And I type my password
        await po.enterPassword(password);

        // And I click the "Sign in" button
        await po.submitSignIn();

        // Then I should see the Force Change Password step
        po.expectStep(AuthenticatorStep.confirmSignInNewPassword);

        await tester.bloc.close();
      },
    );

    // Scenario: User is in a FORCE_CHANGE_PASSWORD state and then enters an
    // invalid new password
    testWidgets(
      'Scenario: User is in a FORCE_CHANGE_PASSWORD state and then enters an '
      'invalid new password',
      (WidgetTester tester) async {
        final po = SignInPage(tester: tester);
        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInNewPassword,
            emitsDone,
          ]),
        );

        // When I type my "phone number" with status "FORCE_CHANGE_PASSWORD"
        await po.enterUsername(phoneNumber.withOutCountryCode());

        // And I type my password
        await po.enterPassword(password);

        // And I click the "Sign in" button
        await po.submitSignIn();

        po.expectStep(AuthenticatorStep.confirmSignInNewPassword);
        final cpo = ConfirmSignInPage(tester: tester);

        // And I type an invalid password
        await cpo.enterNewPassword('a');

        // And I confirm the invalid password
        await cpo.enterPasswordConfirmation('a');

        // And I click the "Change Password" button
        await cpo.submitConfirmSignIn();

        // Then I should see error text
        cpo.expectInputError(
          keyNewPasswordConfirmSignInFormField,
          'Password must include',
        );

        await tester.bloc.close();
      },
    );

    // Scenario: User is in a FORCE_CHANGE_PASSWORD state and then enters a
    // valid new password
    testWidgets(
      'Scenario: User is in a FORCE_CHANGE_PASSWORD state and then enters a '
      'valid new password',
      (WidgetTester tester) async {
        final po = SignInPage(tester: tester);
        await loadAuthenticator(tester: tester);

        expect(
          tester.bloc.stream,
          emitsInOrder([
            UnauthenticatedState.signIn,
            UnauthenticatedState.confirmSignInNewPassword,
            isA<AuthenticatedState>(),
            emitsDone,
          ]),
        );

        // When I type my "phone number" with status "FORCE_CHANGE_PASSWORD"
        await po.enterUsername(phoneNumber.withOutCountryCode());

        // And I type my password
        await po.enterPassword(password);

        // And I click the "Sign in" button
        await po.submitSignIn();

        po.expectStep(AuthenticatorStep.confirmSignInNewPassword);
        final cpo = ConfirmSignInPage(tester: tester);

        // And I type a valid password
        final newPassword = generatePassword();
        await cpo.enterNewPassword(newPassword);

        // And I confirm the valid password
        await cpo.enterPasswordConfirmation(newPassword);

        // And I click the "Change Password" button
        await cpo.submitConfirmSignIn();

        // Then I should be authenticated
        await cpo.expectAuthenticated();

        await tester.bloc.close();
      },
    );
  });
}
