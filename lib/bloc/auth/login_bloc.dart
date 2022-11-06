import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/bloc/auth/login_event.dart';
import 'package:youtube_flutter_test_case/bloc/auth/login_state.dart';
import 'package:youtube_flutter_test_case/bloc/auth_repository.dart';
import 'package:youtube_flutter_test_case/bloc/form_submission_status.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepo;
  LoginBloc({required this.authRepo}) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(Login event) async* {
    if (event is LoginUsernameChange) {
      yield state.copyWith(username: event.username);
    } else if (event is LoginPasswordChange) {
      yield state.copyWith(password: event.password);
    }else if(event is LoginSubmitted){
      yield state.copyWith(formStatus: FormSubmitting())
    }

    try{
      await authRepo.login();
      yield state.copyWith(formStatus: SubmissionSuccess());
    }catch (e){
      yield state.copyWith(formStatus: SubmissionFailed(exception: e));
    }
  }
}
