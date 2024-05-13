// ignore_for_file: directives_ordering

import 'package:skill_colab/core/api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());
final multiPartClientProvider =
    Provider<MultiPartClient>((ref) => MultiPartClient());
