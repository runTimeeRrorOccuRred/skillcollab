import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_colab/data/remote/auth/auth_repo.dart';
import 'package:skill_colab/data/remote/auth/auth_repo_impl.dart';
import 'package:skill_colab/data/remote/firebaseLogin/firebase_login_repo.dart';
import 'package:skill_colab/data/remote/firebaseLogin/firebase_login_repo_impl.dart';
import 'package:skill_colab/domain/providers/api_client_provider.dart';

final authRepositoryProvider = Provider<AuthRepo>(
  (ref) => AuthRepoImpl(
    ref.read(apiClientProvider),
  ),
);

final firebaseLoginProvider = Provider<FirebaseLoginRepo>(
  (ref) => FirebaseLoginRepoImpl(
    ref.read(apiClientProvider),
  ),
);
