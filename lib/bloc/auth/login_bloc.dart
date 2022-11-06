import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/bloc/auth/login_event.dart';
import 'package:youtube_flutter_test_case/bloc/auth/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState());
}
