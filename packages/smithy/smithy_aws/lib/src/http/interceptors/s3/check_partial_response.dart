// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/smithy.dart';

/// {@template smithy_aws.interceptors.check_partial_response}
/// Transforms partial responses (as identified by a 206 status code) into
/// successful, 200, responses as expected by Smithy.
/// {@endtemplate}
class CheckPartialResponse extends HttpResponseInterceptor {
  /// {@macro smithy_aws.interceptors.check_partial_response}
  const CheckPartialResponse();

  @override
  AWSBaseHttpResponse intercept(AWSBaseHttpResponse response) {
    if (response.statusCode != 206) {
      return response;
    }
    return switch (response) {
      AWSHttpResponse _ => AWSHttpResponse(
        statusCode: 200,
        headers: response.headers,
        body: response.bodyBytes,
      ),
      AWSStreamedHttpResponse _ => AWSStreamedHttpResponse(
        statusCode: 200,
        headers: response.headers,
        body: response.body,
      ),
    };
  }
}
