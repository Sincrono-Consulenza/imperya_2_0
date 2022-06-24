abstract class BaseAccessState {}

class InitialAccessState extends BaseAccessState {} //stato iniziale del bloc

class LoadingAccessState extends BaseAccessState {} //stato caricamento dati

class LoggedInState extends BaseAccessState {
} //stato di accesso eseguito con successo

class UserNotLogged extends BaseAccessState {} //stato di accesso errato

class ErrorAccessState extends BaseAccessState {
  //stato di errore - chiamata al server errata o errore da parte del servizio
  final String message;

  ErrorAccessState(this.message);
}
