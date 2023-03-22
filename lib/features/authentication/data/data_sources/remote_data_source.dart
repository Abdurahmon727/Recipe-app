import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<void> registerViaEmail(String email, String password);
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<void> registerViaEmail(String email, String password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
