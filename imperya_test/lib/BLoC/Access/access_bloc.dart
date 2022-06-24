import 'package:Imperya/BLoC/Access/access_event.dart';
import 'package:Imperya/BLoC/Access/access_state.dart';
import 'package:Imperya/models/models.dart';
import 'package:Imperya/services/repository/access_repository.dart';
import 'package:Imperya/services/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';

class AccessBloc extends Bloc<AccessEvent, BaseAccessState> {
  // ignore: dead_code, null_check_always_fails
  AccessBloc(BaseAccessState state, this.accessService) : super(state);

  final AccessService accessService; //iniezione della dipendenza

  @override
  // ignore: override_on_non_overriding_member
  BaseAccessState get initialState => InitialAccessState();

  @override
  Stream<BaseAccessState> mapEventToState(AccessEvent event) async* {
    //questo metodo viene invocato ogni volta che viene inviato un evento al AccessBloc-
    // in questo punto viene inserita tutta la logica di Business per la gestione degli accessi e i rispettivi controlli

    if (event is LoginEvent) // LOGIN
    {
      yield LoadingAccessState(); // ritorna lo stato di caricamento affinche non viene completato il processo.

      try {
        var responseService = await accessService.login(
            event.email!, event.password!); //chiamata al servizio

        if (responseService == 200) {
          yield LoggedInState(); // Login avvenuto con successo

        } else if (responseService == 404) {
          UserError error = AccessRepository.currentUser;
          yield ErrorAccessState(error.message!); // dati utente non trovati
        } else if (responseService == 401) {
          UserError error = AccessRepository.currentUser;
          yield ErrorAccessState(error
              .message!); // utente non autorizzato - email/password errato/i
        } else if (responseService == 500) {
          yield ErrorAccessState(
              "Internal Server Error"); // errore del server - problema nella chiamata al servizio
        }
      } catch (error) {
        yield ErrorAccessState(error
            .toString()); // errore nel servizio o nel sistema - vedi errore del catch
      }
    }
  }
}
