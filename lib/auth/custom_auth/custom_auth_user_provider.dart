import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MissCallPayMerchantAppDuplicateAuthUser {
  MissCallPayMerchantAppDuplicateAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MissCallPayMerchantAppDuplicateAuthUser>
    missCallPayMerchantAppDuplicateAuthUserSubject = BehaviorSubject.seeded(
        MissCallPayMerchantAppDuplicateAuthUser(loggedIn: false));
Stream<MissCallPayMerchantAppDuplicateAuthUser>
    missCallPayMerchantAppDuplicateAuthUserStream() =>
        missCallPayMerchantAppDuplicateAuthUserSubject
            .asBroadcastStream()
            .map((user) => currentUser = user);
