import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final _auth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn(
      clientId: GetPlatform.isWeb
          ? "581726238939-nrlam6kiilc0ba3hdtnprnpffpvgbmff.apps.googleusercontent.com"
          : "581726238939-4qbu46ohni4o7454qqsqbmced0i7vo5f.apps.googleusercontent.com");

  User? user;

  Future<bool> signInWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      user = userCredential.user;
      update();
      return true;
    }
    return false;
  }

  Future<bool> signInAnonymously() async {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    user = userCredential.user;
    update();
    return true;
  }
}
