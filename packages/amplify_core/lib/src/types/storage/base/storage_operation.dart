// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

abstract class StorageOperation<Request, Result> {
  StorageOperation({required this.request, required this.result})
    : operationId = uuid();

  @internal
  final Request request;
  final String operationId;
  final Future<Result> result;
}
