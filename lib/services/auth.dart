import 'package:firebase_auth/firebase_auth.dart';
import 'package:yikes/models/user.dart';



class AuthService{
  
  final FirebaseAuth  _auth = FirebaseAuth.instance;

  // Create object based on firebase user
  UserBase? _userFromFirebaseUser(User? user){
    return user!=null? UserBase(uid: user.uid) : null;
  }
  
  // auth change user stream
  Stream<UserBase?> get userStream => _auth.authStateChanges().map((event)=>_userFromFirebaseUser(event));
  
  
  // sign in anon
  Future<UserBase?> signInAnon() async{
    try{
      UserCredential result = await _auth.signInAnonymously();
      User firebaseUser = result.user!;
      return _userFromFirebaseUser(firebaseUser);
    } catch(e){
      print(e.toString());
    }
  }



  // sign in with email and password



  // register with email and password



  // sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      return null;
    }
  }
}