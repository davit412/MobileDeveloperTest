import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobile_developer_test/models/register.dart';
import 'package:mobile_developer_test/models/user_data.dart';

class RegisterImpl implements RegisterModels {
  final FirebaseAuth _auth;

  RegisterImpl(this._auth);

  @override
  Future<userDataResponse> register(userData data) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: data.email,
        password: data.password,
      );
      await userCredential.user!.updateDisplayName(data.userName);

      return userDataResponse(userCredential.user!, null);
    } on FirebaseAuthException catch (e) {
      return userDataResponse(null, e.code);
    }
  }
}
