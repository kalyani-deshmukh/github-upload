import 'dart:async';

import 'package:word_guesser_game/src/validation.dart';

class Bloc extends Object with Validator{
 final _email = StreamController<String>();
 final _password = StreamController<String>();

 Stream<String> get email => _email.stream.transform(validateEmail);
 Stream<String> get password => _password.stream.transform(validatePassword);

 Function(String)? get changeEmail => _email.sink.add;
 Function(String)? get changePassword => _password.sink.add;

 dispose(){
  _email.close();
  _password.close();
 }

}

final bloc = Bloc();