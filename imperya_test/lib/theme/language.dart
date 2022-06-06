import 'package:Imperya/theme/references.dart';

//classe per la definizione della lingua e le varie traduzioni

class Language {
  static final Language _instance = Language._internal();

  factory Language() {
    return _instance;
  }
  Language._internal();

  //all static string of app
  final prefs = References();
  //http language
  static String? ln;
  String _language = "italiano";
  //----LOGIN----
  String? _user;
  String? _ricordami;
  String? _passwordDimeticata;
  String? _registrati;
  String? _shopnoLogin;
  String? _login;

  String? _loginError1;
  String? _loginError2;
  String? _loginError3;
  String? _loginError4;
  String? _loginError5;
  String? _loginError6;

  //-----DRAWER MENU-----
  String? _shop;
  String? _profilo;
  String? _rete;
  String? _ordini;
  String? _info;
  String? _impostazioni;
  String? _logout;

  //-----Shop screen-----
  String? _textShop1;
  String? _textShop2;
  String? _textShop3;
  String? _preferiti;
  String? _carrello;
  String? _riepilogo;
  String? _carrelloVoid;
  String? _buyNoLogin;

  //-----Settings screen-----
  String? _textSet1;
  String? _textSet2;
  String? _textSet3;
  String? _textSet4;

  //-----Info screen-----

  String? _textInfo1;
  String? _textInfo2;
  String? _textInfo3;
  String? _textInfo4;
  String? _textInfo5;

  //-----network screen-----

  String? _altreInfo;
  String? _codicePersonale;
  String? _tipoNetworker;
  String? _puntiRete;
  String? _puntiDiretti;
  String? _utenti;
  String? _myNetwork;

  String? _dropdownValue;
  String? _dropdownValue2;
  String? _textOne;
  String? _textTwo;
  String? _textOne1;
  String? _textTwo1;
  String? _textOne2;
  String? _textTwo2;
  String? _textTwo3;
  String? _textTwo4;
  String? _textTwo5;
  String? _searchUserTo;
  String? _nomeCognome;
  String? _periodoIscr;
  String? _qualifica;
  String? _fatturatoRete;
  String? _fatturatoDiretto;
  String? _ricerca;
  String? _noUtenti;

  String? _networkProblemOf;
  String? _loadUser;
  String? _searchUser;
  String? _searchRete;
  String? _index;
  String? _netOf;
  String? _paginaPrincipale;
//ordini screen

  String? _textOrdini1;
  String? _textOrdini2;
  String? _loadingOrdini;
  String? _attesa;
  String? _pagare;
  String? _nonritirato;
  String? _textListtile1;
  String? _textListtile2;
  String? _address;
  String? _sedeAddress;
  String? _total;
  String? _dettagliOrd;
  String? _ricevuta;
  String? _ordine;
  String? _del;
  String? _prodottiAcq;

  //profile screen
  String? _documenti;
  String? _networkType;
  String? _networkCompanyType;
  String? _datiUtente;
  String? _datiFatturazione;

  String? _nome;
  String? _secondonome;
  String? _cognome;

  String? _cf;
  String? _datanascita;
  String? _cittadinanza;
  String? _indirizzo;

  String? _nazione;
  String? _prov;
  String? _comune;
  String? _contatti;
  String? _telefono;

  String? _nazres;
  String? _resFis;
  String? _pti;
  String? _codesdi;

  String? _docs1;
  String? _docs2;
  String? _let1;
  String? _let2;
  String? _let3;
  String? _req1;
  String? _req2;
  String? _req3;
//generale
  String? _riprova;
  String? _uscitaApp;
  String? _si;
  String? _errorLoadData;
  String? _daParte;
  String? _indietro;
  String? _riprovaPiuTardi;
  String? _camera;
  String? _galleria;
  String? _disponibile;
  String? _code;
  String? _delete;
  String? _aggiorna;
//card shop
  String? _prezzoListino;
  String? _prezzoScontato;
  String? _provig;
  String? _destinatario;
  String? _quantita;
  String? _subtotale;
  String? _punti;
  String? _noQuantita;
  String? _noProdotto;
  String? _codiceListino;
  String? _descrizione;
  String? _aggiungiCarrello;
  String? _aggiungiColl;

  //popup
  String? _prodottoAggiunto;
  String? _alCarrello;
  String? _selezionaOpzioni;
  String? _acquistaCarrello;
  String? _acquistaColl;
  String? _selectColl;
  String? _codenoValido;
  String? _prodottoAcqPer;
  String? _noAcquisto;
  String? _sorry;
  String? _textBuyPop1;
  String? _textBuyPop2;
  String? _textBuyPop3;
  String? _textBuyPop4;
  String? _prodottoElim;
  String? _textDeleteCart1;
  String? _textDeleteCart2;
  String? _logoutText;
  String? _backHome;
  String? _buy;
  String? _prodottoAggiornato;
  String? _ricercaProdotto;
  String? _nessunProdottoCercato;

  //address screen

  String? _spedizione;
  String? _ritiroSede;
  String? _addAddress;
  String? _typeSpediction;
  String? _continuare;
  String? _textAddress1;
  String? _textAddress2;
  String? _extiBuy;
  String? _loadingData;

  //riepilogo screen
  String? _speditoDa;
  String? _costiSped;
  String? _finalCost;
  String? _addressSped;

  //selection payment screen
  String? _selectPayText1;
  String? _pay1;
  String? _pay2;
  String? _pay3;

  String? _errorPay;
  String? _congratulation1;
  String? _congratulation2;
  String? _congratulation3;
  String? _concludi;
  String? _conclusi;
  String? _inLavorazione;

  // payment popup
  String? _pagamentoTramite;
  String? _selezionaCoupon;
  String? _bonus1;
  String? _bonus2;
  String? _netto;
  String? _speso;
  String? _rimanente;
  String? _final1;
  String? _final2;
  String? _final3;

  String? _impCoin1;
  String? _impCoin2;
  String? _impCoin3;
  String? _impCoin4;

  String? _misto1;
  String? _misto2;
  String? _misto3;

  String? _garante;
  String? _bonifico;
  String? _contrassegno;

  String? _garante1;
  String? _garante2;

  String? _garanziaResp1;
  String? _garanziaResp2;

  String? _garanziaResp3;
  String? _garanziaResp4;

  String? _impProcedere;

  String? _address1;
  String? _address2;

  //popup network
  String? _info1;
  String? _info2;
  String? _info3;
  String? _info4;
  String? _info5;
  String? _info6;
  String? _info7;

  String? _gennaio;
  String? _febbraio;
  String? _marzo;
  String? _aprile;
  String? _maggio;
  String? _giugno;
  String? _luglio;
  String? _agosto;
  String? _settembre;
  String? _ottobre;
  String? _novembre;
  String? _dicembre;

  String? _his1;
  String? _his2;
  String? _his3;
  String? _his4;
  String? _his5;
  String? _his6;
  String? _his7;

  String? _bonusAuto;

  String? _bonusRete;
  String? _bonusEstate;
  String? _bonusInverno;
//address popup

  String? _nomeObl;
  String? _buonAggAddress;
  String? _errorIndirizzo;
  String? _compDati;
  String? _addressIsAdd;
  String? _ob1;
  String? _ob2;
  String? _ob3;
  String? _ob4;
  String? _ob5;

  String? _addAdr;
  String? _dataDest;
  String? _dest;
  String? _civico;
  String? _cap;
  String? _delAddress;

  String? _codeKitNo;
  String? _notif;
  String? _bonuSpendibili;
  String? _classifica;
  String? _noContest;

  String? _endContest;
  String? _scadContest;
  String? _premi;
  String? _posizione;
  String? _nominativo;
  String? _noPremi;
  String? _organizzato;
  String? _lookclass;
  String? _garanzie;
  String? _conEven;
  String? _requestGar;

  String? _myRequest;
  String? _noRequest;
  String? _storicoGar;
  String? _richiestaAcc;
  String? _richiestaRif;

  String? _myContest;
  String? _noMyContest;
  String? _inSvolgimento;

  String? _myEvent;
  String? _noMyEvent;

  String? _dataInizio;
  String? _dataFine;
  String? _stato;

  String? _dataAcce;
  String? _dataRichiesta;
  String? _welcome;
  String? _welcome2;

  String? _garantisci;
  String? _noGarantisci;
  String? _scadenza;
  String? _manuntenzione;

  String? _freeProduct;

  get getfreeProduct {
    return _freeProduct;
  }

  set freeProduct(String value) {
    _freeProduct = value;
  }

  get getbuyNoLogin {
    return _buyNoLogin;
  }

  set buyNoLogin(String value) {
    _buyNoLogin = value;
  }

  get getshopNoLogin {
    return _shopnoLogin;
  }

  set shopNoLogin(String value) {
    _shopnoLogin = value;
  }

  get getmanuntenzione {
    return _manuntenzione;
  }

  set manuntenzione(String value) {
    _manuntenzione = value;
  }

  get getscadenza {
    return _scadenza;
  }

  set scadenza(String value) {
    _scadenza = value;
  }

  get getwelcome2 {
    return _welcome2;
  }

  set welcome2(String value) {
    _welcome2 = value;
  }

  get getwelcome {
    return _welcome;
  }

  set welcome(String value) {
    _welcome = value;
  }

  get getnoGarantisci {
    return _noGarantisci;
  }

  set noGarantisci(String value) {
    _noGarantisci = value;
  }

  get getgarantisci {
    return _garantisci;
  }

  set garantisci(String value) {
    _garantisci = value;
  }

  get getdataRichiesta {
    return _dataRichiesta;
  }

  set dataRichiesta(String value) {
    _dataRichiesta = value;
  }

  get getdataAcce {
    return _dataAcce;
  }

  set dataAcce(String value) {
    _dataAcce = value;
  }

  get getstato {
    return _stato;
  }

  set stato(String value) {
    _stato = value;
  }

  get getdataFin {
    return _dataFine;
  }

  set dataFin(String value) {
    _dataFine = value;
  }

  get getdataIni {
    return _dataInizio;
  }

  set dataIni(String value) {
    _dataInizio = value;
  }

  get getnoMyEvent {
    return _noMyEvent;
  }

  set noMyEvent(String value) {
    _noMyEvent = value;
  }

  get getmyEvent {
    return _myEvent;
  }

  set myEvent(String value) {
    _myEvent = value;
  }

  get getinSvolgimento {
    return _inSvolgimento;
  }

  set inSvolgimento(String value) {
    _inSvolgimento = value;
  }

  get getnoMyContest {
    return _noMyContest;
  }

  set noMyContest(String value) {
    _noMyContest = value;
  }

  get getmyContest {
    return _myContest;
  }

  set myContest(String value) {
    _myContest = value;
  }

  get getrichiestaRif {
    return _richiestaRif;
  }

  set richiestaRif(String value) {
    _richiestaRif = value;
  }

  get getrichiestaAcc {
    return _richiestaAcc;
  }

  set richiestaAcc(String value) {
    _richiestaAcc = value;
  }

  get getstoricoGar {
    return _storicoGar;
  }

  set storicoGar(String value) {
    _storicoGar = value;
  }

  get getnoRequest {
    return _noRequest;
  }

  set noRequest(String value) {
    _noRequest = value;
  }

  get getmyRequest {
    return _myRequest;
  }

  set myRequest(String value) {
    _myRequest = value;
  }

  get getconEven {
    return _conEven;
  }

  set conEven(String value) {
    _conEven = value;
  }

  get getgaranzie {
    return _garanzie;
  }

  set garanzie(String value) {
    _garanzie = value;
  }

  get getlookclass {
    return _lookclass;
  }

  set lookclass(String value) {
    _lookclass = value;
  }

  get getorganizzato {
    return _organizzato;
  }

  set organizzato(String value) {
    _organizzato = value;
  }

  set noContest(String value) {
    _noContest = value;
  }

  get getnoContest {
    return _noContest;
  }

  set noPremi(String value) {
    _noPremi = value;
  }

  get getnoPremi {
    return _noPremi;
  }

  set nominativo(String value) {
    _nominativo = value;
  }

  get getnominativo {
    return _nominativo;
  }

  set posizione(String value) {
    _posizione = value;
  }

  get getposizione {
    return _posizione;
  }

  set premi(String value) {
    _premi = value;
  }

  get getpremi {
    return _premi;
  }

  set scadContest(String value) {
    _scadContest = value;
  }

  get getscadContest {
    return _scadContest;
  }

  set endContest(String value) {
    _endContest = value;
  }

  get getendContest {
    return _endContest;
  }

  set noCodeKit(String value) {
    _codeKitNo = value;
  }

  get getnoCodeKit {
    return _codeKitNo;
  }

  set language(String value) {
    _language = value;
  }

  get getlanguage {
    return _language;
  }

  //login
  get getuser {
    return _user;
  }

  set user(String value) {
    _user = value;
  }

  get getinLav {
    return _inLavorazione;
  }

  set inLav(String value) {
    _inLavorazione = value;
  }

  get getricordami {
    return _ricordami;
  }

  set ricordami(String value) {
    _ricordami = value;
  }

  get getpasswordDimeticata {
    return _passwordDimeticata;
  }

  set passwordDimeticata(String value) {
    _passwordDimeticata = value;
  }

  get getregistrati {
    return _registrati;
  }

  set registrati(String value) {
    _registrati = value;
  }

//drawer menu
  get getshop {
    return _shop;
  }

  set shop(String value) {
    _shop = value;
  }

  get getprofilo {
    return _profilo;
  }

  set profilo(String value) {
    _profilo = value;
  }

  get getrete {
    return _rete;
  }

  set rete(String value) {
    _rete = value;
  }

  get getordini {
    return _ordini;
  }

  set ordini(String value) {
    _ordini = value;
  }

  get getinfo {
    return _info;
  }

  set info(String value) {
    _info = value;
  }

  get getimpostazioni {
    return _impostazioni;
  }

  set impostazioni(String value) {
    _impostazioni = value;
  }

  get getlogout {
    return _logout;
  }

  set logout(String value) {
    _logout = value;
  }

  //shop page
  get gettexShop1 {
    return _textShop1;
  }

  set texShop1(String value) {
    _textShop1 = value;
  }

  get gettexShop2 {
    return _textShop2;
  }

  set texShop2(String value) {
    _textShop2 = value;
  }

  get gettexShop3 {
    return _textShop3;
  }

  set texShop3(String value) {
    _textShop3 = value;
  }

  get getpreferiti {
    return _preferiti;
  }

  set preferiti(String value) {
    _preferiti = value;
  }

  get getcarrello {
    return _carrello;
  }

  set carrello(String value) {
    _carrello = value;
  }

  get getriepilogo {
    return _riepilogo;
  }

  set riepilogo(String value) {
    _riepilogo = value;
  }

  get getcarrelloVoid {
    return _carrelloVoid;
  }

  set carrelloVoid(String value) {
    _carrelloVoid = value;
  }
//setting screen

  get gettextSet1 {
    return _textSet1;
  }

  set textSet1(String value) {
    _textSet1 = value;
  }

  get gettextSet2 {
    return _textSet2;
  }

  set textSet2(String value) {
    _textSet2 = value;
  }

  get gettextSet3 {
    return _textSet3;
  }

  set textSet3(String value) {
    _textSet3 = value;
  }

  get gettextSet4 {
    return _textSet4;
  }

  set textSet4(String value) {
    _textSet4 = value;
  }

  //info screen

  get gettextInfo1 {
    return _textInfo1;
  }

  set textInfo1(String value) {
    _textInfo1 = value;
  }

  get gettextInfo2 {
    return _textInfo2;
  }

  set textInfo2(String value) {
    _textInfo2 = value;
  }

  get gettextInfo3 {
    return _textInfo3;
  }

  set textInfo3(String value) {
    _textInfo3 = value;
  }

  get gettextInfo4 {
    return _textInfo4;
  }

  set textInfo4(String value) {
    _textInfo4 = value;
  }

  get gettextInfo5 {
    return _textInfo5;
  }

  set textInfo5(String value) {
    _textInfo5 = value;
  }

  //network screen
  get getaltreInfo {
    return _altreInfo;
  }

  set altreInfo(String value) {
    _altreInfo = value;
  }

  get getcodicePersonale {
    return _codicePersonale;
  }

  set codicePersonale(String value) {
    _codicePersonale = value;
  }

  get gettipoNetworker {
    return _tipoNetworker;
  }

  set tipoNetworker(String value) {
    _tipoNetworker = value;
  }

  get getpuntiRete {
    return _puntiRete;
  }

  set puntiRete(String value) {
    _puntiRete = value;
  }

  get getpuntiDiretti {
    return _puntiDiretti;
  }

  set puntiDiretti(String value) {
    _puntiDiretti = value;
  }

  get getutenti {
    return _utenti;
  }

  set utenti(String value) {
    _utenti = value;
  }

  get getmyNetwork {
    return _myNetwork;
  }

  set myNetwork(String value) {
    _myNetwork = value;
  }

  get getdropdownValue {
    return _dropdownValue;
  }

  set dropdownValue(String value) {
    _dropdownValue = value;
  }

  get getdropdownValue2 {
    return _dropdownValue2;
  }

  set dropdownValue2(String value) {
    _dropdownValue2 = value;
  }

  get gettextOne {
    return _textOne;
  }

  set textOne(String value) {
    _textOne = value;
  }

  get gettextTwo {
    return _textTwo;
  }

  set textTwo(String value) {
    _textTwo = value;
  }

  get gettextOne1 {
    return _textOne1;
  }

  set textOne1(String value) {
    _textOne1 = value;
  }

  get gettextTwo1 {
    return _textTwo1;
  }

  set textTwo1(String value) {
    _textTwo1 = value;
  }

  get gettextOne2 {
    return _textOne2;
  }

  set textOne2(String value) {
    _textOne2 = value;
  }

  get gettextTwo2 {
    return _textTwo2;
  }

  set textTwo2(String value) {
    _textTwo2 = value;
  }

  get gettextTwo3 {
    return _textTwo3;
  }

  set textTwo3(String value) {
    _textTwo3 = value;
  }

  get gettextTwo4 {
    return _textTwo4;
  }

  set textTwo4(String value) {
    _textTwo4 = value;
  }

  get gettextTwo5 {
    return _textTwo5;
  }

  set textTwo5(String value) {
    _textTwo5 = value;
  }

  get getsearchUserTo {
    return _searchUserTo;
  }

  set searchUserTo(String value) {
    _searchUserTo = value;
  }

  get getnetworkProblemOf {
    return _networkProblemOf;
  }

  set networkProblemOf(String value) {
    _networkProblemOf = value;
  }

  get getloadUserData {
    return _loadUser;
  }

  set loadUserData(String value) {
    _loadUser = value;
  }

  get getsearchUser {
    return _searchUser;
  }

  set searchUser(String value) {
    _searchUser = value;
  }

  get getsearchRete {
    return _searchRete;
  }

  set searchRete(String value) {
    _searchRete = value;
  }

  get getindice {
    return _index;
  }

  set indice(String value) {
    _index = value;
  }

  get getnetOf {
    return _netOf;
  }

  set netOf(String value) {
    _netOf = value;
  }

  get getpaginaPrinc {
    return _paginaPrincipale;
  }

  set paginaPrinc(String value) {
    _paginaPrincipale = value;
  }

  //ordini

  get gettextOrdini1 {
    return _textOrdini1;
  }

  set textOrdini1(String value) {
    _textOrdini1 = value;
  }

  get gettextOrdini2 {
    return _textOrdini2;
  }

  set textOrdini2(String value) {
    _textOrdini2 = value;
  }

  get getloadingOrdini {
    return _loadingOrdini;
  }

  set loadingOrdini(String value) {
    _loadingOrdini = value;
  }

  get getattesa {
    return _attesa;
  }

  set attesa(String value) {
    _attesa = value;
  }

  get getdaPagare {
    return _pagare;
  }

  set daPagare(String value) {
    _pagare = value;
  }

  get getnonRitirato {
    return _nonritirato;
  }

  set nonRitirato(String value) {
    _nonritirato = value;
  }

  get gettextListTile1 {
    return _textListtile1;
  }

  set textListTile1(String value) {
    _textListtile1 = value;
  }

  get gettextListTile2 {
    return _textListtile2;
  }

  set textListTile2(String value) {
    _textListtile2 = value;
  }

  get getaddress {
    return _address;
  }

  set address(String value) {
    _address = value;
  }

  get getsedeAddress {
    return _sedeAddress;
  }

  set sedeAddress(String value) {
    _sedeAddress = value;
  }

  get gettotal {
    return _total;
  }

  set total(String value) {
    _total = value;
  }

  get getdettagliOrd {
    return _dettagliOrd;
  }

  set dettagliOrd(String value) {
    _dettagliOrd = value;
  }

  get getricevuta {
    return _ricevuta;
  }

  set ricevuta(String value) {
    _ricevuta = value;
  }

  get getordine {
    return _ordine;
  }

  set ordine(String value) {
    _ordine = value;
  }

  get getdel {
    return _del;
  }

  set del(String value) {
    _del = value;
  }

  get getprodottiAcq {
    return _prodottiAcq;
  }

  set prodottiAcq(String value) {
    _prodottiAcq = value;
  }

//profilo
  get getdocs {
    return _documenti;
  }

  set docs(String value) {
    _documenti = value;
  }

  get getnetworkType {
    return _networkType;
  }

  set networkType(String value) {
    _networkType = value;
  }

  get getnetworkCompany {
    return _networkCompanyType;
  }

  set networkCompany(String value) {
    _networkCompanyType = value;
  }

  get getdatiu {
    return _datiUtente;
  }

  set datiu(String value) {
    _datiUtente = value;
  }

  get getdatif {
    return _datiFatturazione;
  }

  set datif(String value) {
    _datiFatturazione = value;
  }

  get getnome {
    return _nome;
  }

  set nome(String value) {
    _nome = value;
  }

  get getcognome {
    return _cognome;
  }

  set cognome(String value) {
    _cognome = value;
  }

  get getsecondoNome {
    return _secondonome;
  }

  set secondoNome(String value) {
    _secondonome = value;
  }

  get getcf {
    return _cf;
  }

  set cf(String value) {
    _cf = value;
  }

  get getdatanascita {
    return _datanascita;
  }

  set datanascita(String value) {
    _datanascita = value;
  }

  get getcittadinanza {
    return _cittadinanza;
  }

  set cittadinanza(String value) {
    _cittadinanza = value;
  }

  get getresidenza {
    return _indirizzo;
  }

  set residenza(String value) {
    _indirizzo = value;
  }

  get getnazione {
    return _nazione;
  }

  set nazione(String value) {
    _nazione = value;
  }

  get getprov {
    return _prov;
  }

  set prov(String value) {
    _prov = value;
  }

  get getcomune {
    return _comune;
  }

  set comune(String value) {
    _comune = value;
  }

  get gettelefono {
    return _telefono;
  }

  set telefono(String value) {
    _telefono = value;
  }

  get getnazres {
    return _nazres;
  }

  set nazres(String value) {
    _nazres = value;
  }

  get getresfis {
    return _resFis;
  }

  set resfis(String value) {
    _resFis = value;
  }

  get getpti {
    return _pti;
  }

  set pti(String value) {
    _pti = value;
  }

  get getcodsdi {
    return _codesdi;
  }

  set codsdi(String value) {
    _codesdi = value;
  }

  get getcontatti {
    return _contatti;
  }

  set contatti(String value) {
    _contatti = value;
  }

  get getdocs1 {
    return _docs1;
  }

  set docs1(String value) {
    _docs1 = value;
  }

  get getdocs2 {
    return _docs2;
  }

  set docs2(String value) {
    _docs2 = value;
  }

  get getlet1 {
    return _let1;
  }

  set let1(String value) {
    _let1 = value;
  }

  get getlet2 {
    return _let2;
  }

  set let2(String value) {
    _let2 = value;
  }

  get getlet3 {
    return _let3;
  }

  set let3(String value) {
    _let3 = value;
  }

  get getreq1 {
    return _req1;
  }

  set req1(String value) {
    _req1 = value;
  }

  get getreq2 {
    return _req2;
  }

  set req2(String value) {
    _req2 = value;
  }

  get getreq3 {
    return _req3;
  }

  set req3(String value) {
    _req3 = value;
  }

//generale
  get getriprova {
    return _riprova;
  }

  set riprova(String value) {
    _riprova = value;
  }

  get getuscitaApp {
    return _uscitaApp;
  }

  set uscitaApp(String value) {
    _uscitaApp = value;
  }

  get getsi {
    return _si;
  }

  set si(String value) {
    _si = value;
  }

  get geterrorLoadData {
    return _errorLoadData;
  }

  set errorLoadData(String value) {
    _errorLoadData = value;
  }

  get getnomeCognome {
    return _nomeCognome;
  }

  set nomeCognome(String value) {
    _nomeCognome = value;
  }

  get getperiodoIscr {
    return _periodoIscr;
  }

  set periodoIscr(String value) {
    _periodoIscr = value;
  }

  get getqualifica {
    return _qualifica;
  }

  set qualifica(String value) {
    _qualifica = value;
  }

  get getfatturatoRete {
    return _fatturatoRete;
  }

  set fatturatoRete(String value) {
    _fatturatoRete = value;
  }

  get getfatturatoDiretto {
    return _fatturatoDiretto;
  }

  set fatturatoDiretto(String value) {
    _fatturatoDiretto = value;
  }

  get getricerca {
    return _ricerca;
  }

  set ricerca(String value) {
    _ricerca = value;
  }

  get getnoUtenti {
    return _noUtenti;
  }

  set noUtenti(String value) {
    _noUtenti = value;
  }

  get getda {
    return _daParte;
  }

  set da(String value) {
    _daParte = value;
  }

  get getindietro {
    return _indietro;
  }

  set indietro(String value) {
    _indietro = value;
  }

  get getriprovaPiuTardi {
    return _riprovaPiuTardi;
  }

  set riprovaPiuTardi(String value) {
    _riprovaPiuTardi = value;
  }

  get getdelete {
    return _delete;
  }

  set delete(String value) {
    _delete = value;
  }

  get getcamera {
    return _camera;
  }

  set camera(String value) {
    _camera = value;
  }

  get getgalleria {
    return _galleria;
  }

  set galleria(String value) {
    _galleria = value;
  }

  get getdisponibile {
    return _disponibile;
  }

  set disponibile(String value) {
    _disponibile = value;
  }

  get getcode {
    return _code;
  }

  set code(String value) {
    _code = value;
  }
  //card shop

  get getprezzoListino {
    return _prezzoListino;
  }

  set prezzoListino(String value) {
    _prezzoListino = value;
  }

  get getprezzoScontato {
    return _prezzoScontato;
  }

  set prezzoScontato(String value) {
    _prezzoScontato = value;
  }

  get getprovig {
    return _provig;
  }

  set provig(String value) {
    _provig = value;
  }

  get getlogin {
    return _login;
  }

  set login(String value) {
    _login = value;
  }

  get getdestinatario {
    return _destinatario;
  }

  set destinatario(String value) {
    _destinatario = value;
  }

  get getquantita {
    return _quantita;
  }

  set quantita(String value) {
    _quantita = value;
  }

  get getsubtotale {
    return _subtotale;
  }

  set subtotale(String value) {
    _subtotale = value;
  }

  get getpunti {
    return _punti;
  }

  set punti(String value) {
    _punti = value;
  }

  get getnoQuantita {
    return _noQuantita;
  }

  set noQuantita(String value) {
    _noQuantita = value;
  }

  get getnoProdotto {
    return _noProdotto;
  }

  set noProdotto(String value) {
    _noProdotto = value;
  }

  get getcodiceListino {
    return _codiceListino;
  }

  set codiceListino(String value) {
    _codiceListino = value;
  }

  get getdescrizione {
    return _descrizione;
  }

  set descrizione(String value) {
    _descrizione = value;
  }

  get getaggiungiCarrello {
    return _aggiungiCarrello;
  }

  set aggiungiCarrello(String value) {
    _aggiungiCarrello = value;
  }

  get getaggiungiColl {
    return _aggiungiColl;
  }

  set aggiungiColl(String value) {
    _aggiungiColl = value;
  }

  get getprodottoAggiunto {
    return _prodottoAggiunto;
  }

  set prodottoAggiunto(String value) {
    _prodottoAggiunto = value;
  }

  get getalCarrello {
    return _alCarrello;
  }

  set alCarrello(String value) {
    _alCarrello = value;
  }

  get getselezionaOpzioni {
    return _selezionaOpzioni;
  }

  set selezionaOpzioni(String value) {
    _selezionaOpzioni = value;
  }

  get getacquistaCarrello {
    return _acquistaCarrello;
  }

  set acquistaCarrello(String value) {
    _acquistaCarrello = value;
  }

  get getacquistaColl {
    return _acquistaColl;
  }

  set acquistaColl(String value) {
    _acquistaColl = value;
  }

  get getselectColl {
    return _selectColl;
  }

  set selectColl(String value) {
    _selectColl = value;
  }

  get getcodeNoValido {
    return _codenoValido;
  }

  set codeNoValido(String value) {
    _codenoValido = value;
  }

  get getprodottoAcqPer {
    return _prodottoAcqPer;
  }

  set prodottoAcqPer(String value) {
    _prodottoAcqPer = value;
  }

  get getnoAcquisto {
    return _noAcquisto;
  }

  set noAcquisto(String value) {
    _noAcquisto = value;
  }

  get getsorry {
    return _sorry;
  }

  set sorry(String value) {
    _sorry = value;
  }

  get gettextBuyPop1 {
    return _textBuyPop1;
  }

  set textBuyPop1(String value) {
    _textBuyPop1 = value;
  }

  get gettextBuyPop2 {
    return _textBuyPop2;
  }

  set textBuyPop2(String value) {
    _textBuyPop2 = value;
  }

  get gettextBuyPop3 {
    return _textBuyPop3;
  }

  set textBuyPop3(String value) {
    _textBuyPop3 = value;
  }

  get gettextBuyPop4 {
    return _textBuyPop4;
  }

  set textBuyPop4(String value) {
    _textBuyPop4 = value;
  }

  get getprodottoElim {
    return _prodottoElim;
  }

  set prodottoElim(String value) {
    _prodottoElim = value;
  }

  get gettextDeleteCart1 {
    return _textDeleteCart1;
  }

  set textDeleteCart1(String value) {
    _textDeleteCart1 = value;
  }

  get gettextDeleteCart2 {
    return _textDeleteCart2;
  }

  set textDeleteCart2(String value) {
    _textDeleteCart2 = value;
  }

  get getlogoutText {
    return _logoutText;
  }

  set logoutText(String value) {
    _logoutText = value;
  }

  get getbackHome {
    return _backHome;
  }

  set backHome(String value) {
    _backHome = value;
  }

  get getbuy {
    return _buy;
  }

  set buy(String value) {
    _buy = value;
  }

  get getprodottoAggiornato {
    return _prodottoAggiornato;
  }

  set prodottoAggiornato(String value) {
    _prodottoAggiornato = value;
  }

  get getricercaProdotto {
    return _ricercaProdotto;
  }

  set ricercaProdotto(String value) {
    _ricercaProdotto = value;
  }

  get getnoSearch {
    return _nessunProdottoCercato;
  }

  set noSearch(String value) {
    _nessunProdottoCercato = value;
  }

  get getspedizione {
    return _spedizione;
  }

  set spedizione(String value) {
    _spedizione = value;
  }

  get getritiroSede {
    return _ritiroSede;
  }

  set ritiroSede(String value) {
    _ritiroSede = value;
  }

  get gettextAddress1 {
    return _textAddress1;
  }

  set textAddress1(String value) {
    _textAddress1 = value;
  }

  get getaddAddress {
    return _addAddress;
  }

  set addAddress(String value) {
    _addAddress = value;
  }

  get gettypeSped {
    return _typeSpediction;
  }

  set typeSped(String value) {
    _typeSpediction = value;
  }

  get getcontinuare {
    return _continuare;
  }

  set continuare(String value) {
    _continuare = value;
  }

  get gettextAddress2 {
    return _textAddress2;
  }

  set textAddress2(String value) {
    _textAddress2 = value;
  }

  get getextiBuy {
    return _extiBuy;
  }

  set extiBuy(String value) {
    _extiBuy = value;
  }

  get getloadingData {
    return _loadingData;
  }

  set loadingData(String value) {
    _loadingData = value;
  }

  get getspeditoDa {
    return _speditoDa;
  }

  set speditoDa(String value) {
    _speditoDa = value;
  }

  get getcostiSped {
    return _costiSped;
  }

  set costiSped(String value) {
    _costiSped = value;
  }

  get getfinalCost {
    return _finalCost;
  }

  set finalCost(String value) {
    _finalCost = value;
  }

  get getaddressSped {
    return _addressSped;
  }

  set addressSped(String value) {
    _addressSped = value;
  }

  //selection payment screen
  get getselectPayText1 {
    return _selectPayText1;
  }

  set selectPayText1(String value) {
    _selectPayText1 = value;
  }

  get getpay1 {
    return _pay1;
  }

  set pay1(String value) {
    _pay1 = value;
  }

  get getpay2 {
    return _pay2;
  }

  set pay2(String value) {
    _pay2 = value;
  }

  get getpay3 {
    return _pay3;
  }

  set pay3(String value) {
    _pay3 = value;
  }

  get geterrorPay {
    return _errorPay;
  }

  set errorPay(String value) {
    _errorPay = value;
  }

  get getcongratulation1 {
    return _congratulation1;
  }

  set congratulation1(String value) {
    _congratulation1 = value;
  }

  get getcongratulation2 {
    return _congratulation2;
  }

  set congratulation2(String value) {
    _congratulation2 = value;
  }

  get getcongratulation3 {
    return _congratulation3;
  }

  set congratulation3(String value) {
    _congratulation3 = value;
  }

  get getconcludi {
    return _concludi;
  }

  set concludi(String value) {
    _concludi = value;
  }

  get getconclusi {
    return _conclusi;
  }

  set conclusi(String value) {
    _conclusi = value;
  }

  get getpagamentotra {
    return _pagamentoTramite;
  }

  set pagamentotra(String value) {
    _pagamentoTramite = value;
  }

  get getselectCoupon {
    return _selezionaCoupon;
  }

  set selectCoupon(String value) {
    _selezionaCoupon = value;
  }

  get getbonus1 {
    return _bonus1;
  }

  set bonus1(String value) {
    _bonus1 = value;
  }

  get getbonus2 {
    return _bonus2;
  }

  set bonus2(String value) {
    _bonus2 = value;
  }

  get getnetto {
    return _netto;
  }

  set netto(String value) {
    _netto = value;
  }

  get getspeso {
    return _speso;
  }

  set speso(String value) {
    _speso = value;
  }

  get getrimanente {
    return _rimanente;
  }

  set rimanente(String value) {
    _rimanente = value;
  }

  get getfinal1 {
    return _final1;
  }

  set final1(String value) {
    _final1 = value;
  }

  get getfinal2 {
    return _final2;
  }

  set final2(String value) {
    _final2 = value;
  }

  get getfinal3 {
    return _final3;
  }

  set final3(String value) {
    _final3 = value;
  }

  get getimpCoin1 {
    return _impCoin1;
  }

  set impCoin1(String value) {
    _impCoin1 = value;
  }

  get getimpCoin2 {
    return _impCoin2;
  }

  set impCoin2(String value) {
    _impCoin2 = value;
  }

  get getimpCoin3 {
    return _impCoin3;
  }

  set impCoin3(String value) {
    _impCoin3 = value;
  }

  get getimpCoin4 {
    return _impCoin4;
  }

  set impCoin4(String value) {
    _impCoin4 = value;
  }

  get getmisto1 {
    return _misto1;
  }

  set misto1(String value) {
    _misto1 = value;
  }

  get getmisto2 {
    return _misto2;
  }

  set misto2(String value) {
    _misto2 = value;
  }

  get getmisto3 {
    return _misto3;
  }

  set misto3(String value) {
    _misto3 = value;
  }

  get getgarante {
    return _garante;
  }

  set garante(String value) {
    _garante = value;
  }

  get getbonifico {
    return _bonifico;
  }

  set bonifico(String value) {
    _bonifico = value;
  }

  get getcontrassegno {
    return _contrassegno;
  }

  set contrassegno(String value) {
    _contrassegno = value;
  }

  get getgarante1 {
    return _garante1;
  }

  set garante1(String value) {
    _garante1 = value;
  }

  get getgarante2 {
    return _garante2;
  }

  set garante2(String value) {
    _garante2 = value;
  }

  get getgaranziaResp1 {
    return _garanziaResp1;
  }

  set garanziaResp1(String value) {
    _garanziaResp1 = value;
  }

  get getgaranziaResp2 {
    return _garanziaResp2;
  }

  set garanziaResp2(String value) {
    _garanziaResp2 = value;
  }

  get getgaranziaResp3 {
    return _garanziaResp3;
  }

  set garanziaResp3(String value) {
    _garanziaResp3 = value;
  }

  get getgaranziaResp4 {
    return _garanziaResp4;
  }

  set garanziaResp4(String value) {
    _garanziaResp4 = value;
  }

  get getimpProcedere {
    return _impProcedere;
  }

  set impProcedere(String value) {
    _impProcedere = value;
  }

  get getlog1 {
    return _loginError1;
  }

  set log1(String value) {
    _loginError1 = value;
  }

  get getlog2 {
    return _loginError2;
  }

  set log2(String value) {
    _loginError2 = value;
  }

  get getlog3 {
    return _loginError3;
  }

  set log3(String value) {
    _loginError3 = value;
  }

  get getlog4 {
    return _loginError4;
  }

  set log4(String value) {
    _loginError4 = value;
  }

  get getlog5 {
    return _loginError5;
  }

  set log5(String value) {
    _loginError5 = value;
  }

  get getlog6 {
    return _loginError6;
  }

  set log6(String value) {
    _loginError6 = value;
  }

  get getaggiorna {
    return _aggiorna;
  }

  set aggiorna(String value) {
    _aggiorna = value;
  }

  get getaddress1 {
    return _address1;
  }

  set address1(String value) {
    _address1 = value;
  }

  get getaddress2 {
    return _address2;
  }

  set address2(String value) {
    _address2 = value;
  }

  get getrequestGar {
    return _requestGar;
  }

  set requestGar(String value) {
    _requestGar = value;
  }

  get getinfo1 {
    return _info1;
  }

  set info1(String value) {
    _info1 = value;
  }

  get getinfo2 {
    return _info2;
  }

  set info2(String value) {
    _info2 = value;
  }

  get getinfo3 {
    return _info3;
  }

  set info3(String value) {
    _info3 = value;
  }

  get getinfo4 {
    return _info4;
  }

  set info4(String value) {
    _info4 = value;
  }

  get getinfo5 {
    return _info5;
  }

  set info5(String value) {
    _info5 = value;
  }

  get getinfo6 {
    return _info6;
  }

  set info6(String value) {
    _info6 = value;
  }

  get getinfo7 {
    return _info7;
  }

  set info7(String value) {
    _info7 = value;
  }

  get getgennaio {
    return _gennaio;
  }

  set gennaio(String value) {
    _gennaio = value;
  }

  get getfebbraio {
    return _febbraio;
  }

  set febbraio(String value) {
    _febbraio = value;
  }

  get getmarzo {
    return _marzo;
  }

  set marzo(String value) {
    _marzo = value;
  }

  get getaprile {
    return _aprile;
  }

  set aprile(String value) {
    _aprile = value;
  }

  get getmaggio {
    return _maggio;
  }

  set maggio(String value) {
    _maggio = value;
  }

  get getgiugno {
    return _giugno;
  }

  set giugno(String value) {
    _giugno = value;
  }

  get getluglio {
    return _luglio;
  }

  set luglio(String value) {
    _luglio = value;
  }

  get getagosto {
    return _agosto;
  }

  set agosto(String value) {
    _agosto = value;
  }

  get getsettembre {
    return _settembre;
  }

  set settembre(String value) {
    _settembre = value;
  }

  get getottobre {
    return _ottobre;
  }

  set ottobre(String value) {
    _ottobre = value;
  }

  get getnovembre {
    return _novembre;
  }

  set novembre(String value) {
    _novembre = value;
  }

  get getdicembre {
    return _dicembre;
  }

  set dicembre(String value) {
    _dicembre = value;
  }

  get gethis1 {
    return _his1;
  }

  set his1(String value) {
    _his1 = value;
  }

  get gethis2 {
    return _his2;
  }

  set his2(String value) {
    _his2 = value;
  }

  get gethis3 {
    return _his3;
  }

  set his3(String value) {
    _his3 = value;
  }

  get gethis4 {
    return _his4;
  }

  set his4(String value) {
    _his4 = value;
  }

  get gethis5 {
    return _his5;
  }

  set his5(String value) {
    _his5 = value;
  }

  get gethis6 {
    return _his6;
  }

  set his6(String value) {
    _his6 = value;
  }

  get gethis7 {
    return _his7;
  }

  set his7(String value) {
    _his7 = value;
  }

  get getbonusAuto {
    return _bonusAuto;
  }

  set bonusAuto(String value) {
    _bonusAuto = value;
  }

  get getbonusRete {
    return _bonusRete;
  }

  set bonusRete(String value) {
    _bonusRete = value;
  }

  get getbonusEstate {
    return _bonusEstate;
  }

  set bonusEstate(String value) {
    _bonusEstate = value;
  }

  get getbonusInverno {
    return _bonusInverno;
  }

  set bonusInverno(String value) {
    _bonusInverno = value;
  }

  get getnomeObl {
    return _nomeObl;
  }

  set nomeObl(String value) {
    _nomeObl = value;
  }

  get getbuonAggAddress {
    return _buonAggAddress;
  }

  set buonAggAddress(String value) {
    _buonAggAddress = value;
  }

  get geterrorIndirizzo {
    return _errorIndirizzo;
  }

  set errorIndirizzo(String value) {
    _errorIndirizzo = value;
  }

  get getcompDati {
    return _compDati;
  }

  set compDati(String value) {
    _compDati = value;
  }

  get getaddressIsAdd {
    return _addressIsAdd;
  }

  set addressIsAdd(String value) {
    _addressIsAdd = value;
  }

  get getob1 {
    return _ob1;
  }

  set ob1(String value) {
    _ob1 = value;
  }

  get getob2 {
    return _ob2;
  }

  set ob2(String value) {
    _ob2 = value;
  }

  get getob3 {
    return _ob3;
  }

  set ob3(String value) {
    _ob3 = value;
  }

  get getob4 {
    return _ob4;
  }

  set ob4(String value) {
    _ob4 = value;
  }

  get getob5 {
    return _ob5;
  }

  set ob5(String value) {
    _ob5 = value;
  }

  get getaddAddr {
    return _addAdr;
  }

  set addAddr(String value) {
    _addAdr = value;
  }

  get getdataDest {
    return _dataDest;
  }

  set dataDest(String value) {
    _dataDest = value;
  }

  get getdest {
    return _dest;
  }

  set dest(String value) {
    _dest = value;
  }

  get getciv {
    return _civico;
  }

  set civ(String value) {
    _civico = value;
  }

  get getcap {
    return _cap;
  }

  set cap(String value) {
    _cap = value;
  }

  get getdelAddr {
    return _delAddress;
  }

  set delAddr(String value) {
    _delAddress = value;
  }

  get getnotif {
    return _notif;
  }

  set notif(String value) {
    _notif = value;
  }

  get getbonuSpendibili {
    return _bonuSpendibili;
  }

  set bonuSpendibili(String value) {
    _bonuSpendibili = value;
  }

  get getclassifica {
    return _classifica;
  }

  set classifica(String value) {
    _classifica = value;
  }

  changeLanguage() {
    //
    //
    //
    //italiano
    //
    //
    //
    if (prefs.getlanguage == "italiano") {
      ln = "it";
      language = "Italiano";
      user = "Utenza";
      ricordami = "Ricordami";
      passwordDimeticata = "Password dimenticata?";
      registrati = "Registrazione";
      shop = "Shop";
      profilo = "Profilo";
      rete = "Rete";
      ordini = "I miei ordini";
      info = "Info";
      impostazioni = "Impostazioni";
      logout = "Logout";
      texShop1 = "Le nostre Essenze";
      texShop2 = "Le nostre Linee";
      texShop3 = "Ultimi prodotti";
      preferiti = "Preferiti";
      carrello = "Carrello";
      riepilogo = "Carrello";
      carrelloVoid = "Carrello vuoto";
      textSet1 = "Tema";
      textSet2 = "Seleziona lingua";
      textSet3 = "Attiva notifiche";
      textSet4 = "Disattiva notifiche";
      textInfo1 = "Piano attività";
      textInfo2 = "Regolamenti";
      textInfo3 = "Piano Compensi";
      textInfo4 = "Listino prodotti";
      textInfo5 = "Cataloghi";
      altreInfo = "Altre info";
      codicePersonale = "Codice personale";
      tipoNetworker = "Tipologia networker";
      puntiRete = "Punti rete";
      puntiDiretti = "Punti diretti";
      utenti = "Utenti";
      myNetwork = "Il tuo network";
      textOrdini1 = "Elenco degli ordini";
      textOrdini2 = "che hai effettutato";
      loadingOrdini = "caricamento ordini";
      daPagare = "da pagare";
      attesa = "attesa";
      nonRitirato = "non ritirato";
      textListTile1 = "Ordine del";
      textListTile2 = "Stato";
      address = "Indirizzo";
      sedeAddress = "Ritiro in sede";
      total = "Totale";
      ricevuta = "ricevuta";
      dettagliOrd = "dettagli ordine";
      errorLoadData = "Problema con il caricamento dei dati";
      si = "si";
      riprova = "Riprova";
      uscitaApp = "Vuoi uscire dall\'app?";
      ordine = "Ordine";
      del = "del";
      prodottiAcq = "Prodotti acquistati";
      dropdownValue = "Cerca utente per: ";
      dropdownValue2 = "Seleziona qualifica";
      textOne = "Seleziona il filtro di ricerca";
      textTwo = "e inserisci il testo per la ricerca";
      textOne1 = "Seleziona una qualifica";
      textTwo1 = "per la ricerca";
      textOne2 = "Seleziona due date di riferimento";
      textTwo2 = "Periodo max 12 giorni";
      textTwo3 = "Inserisci un nome e/o un cognome";
      textTwo4 = "Inserisci un codice personale";
      textTwo5 = "Inserisci una cifra";
      searchUserTo = "Ricerca utenti per";
      nomeCognome = "Nome e cognome";
      periodoIscr = "Periodo d'iscrizione";
      qualifica = "Qualifica";
      fatturatoRete = "Fatturato rete";
      fatturatoDiretto = "Fatturato diretto";
      ricerca = "Cerca";
      noUtenti = "Nessun utente trovato";
      da = "da";
      delete = "Elimina";
      networkProblemOf = "Problemi con il network: ";
      loadUserData = "Caricamento dei dati utente";
      searchUser = "Ricerca dell'utente";
      searchRete = "Ricerca di rete";
      indice = "Indice";
      netOf = "Network di: ";
      indietro = "Indietro";
      paginaPrinc = "Pagina principale";
      riprovaPiuTardi = "Riprova più tardi";
      docs = "Documenti";
      camera = "Camera";
      galleria = "Galleria";
      nome = "Nome";
      secondoNome = "Secondo nome";
      cognome = "Cognome";
      networkType = "Network type";
      networkCompany = "Tipologia collaboratore/Azienda";
      datiu = "Dati utente";
      datif = "Dati di fatturazione";
      cf = "Codice fiscale";
      datanascita = "Data di nascita";
      cittadinanza = "Cittadinanza";
      residenza = "Indirizzo di residenza";
      nazione = "Nazione";
      prov = "Provincia";
      comune = "Comune/Città";
      telefono = "Telefono";
      contatti = "Contatti";
      nazres = "Nazione di appartenenza";
      resfis = "Residenza fiscale";
      pti = "Patita iva";
      codsdi = "Codice SDI";
      docs1 = "Documento di riconoscimento";
      docs2 = "Documento di riconoscimento secondario";
      let1 = "Lettera incarico* (pagina 1 o tutte)";
      let2 = "Allega pagina 2 di Lettera incarico";
      let3 = "Allega pagina 3 di Lettera incarico";
      req1 = "Codice Supplementare";
      req2 = "Cessione Codice";
      req3 = "Richiesta Cancellazione Codice";
      prezzoListino = "Prezzo Listino";
      prezzoScontato = "Prezzo scontato";
      provig = "Provvigionabile";
      destinatario = "Destinatario";
      quantita = "Quantità";
      subtotale = "SubTotale";
      punti = "Punti";
      noQuantita = "nessuna quantità selezionata";
      noProdotto = "Prodotto non";
      disponibile = "disponibile";
      descrizione = "Descrizione";
      codiceListino = "Codice listino";
      aggiungiCarrello = "+ carrello";
      aggiungiColl = "+ per collaboratore";
      prodottoAggiunto = "Prodotto aggiunto";
      alCarrello = "al carrello";
      selezionaOpzioni = "Scegli una delle seguenti opzioni";
      acquistaCarrello = "Aggiungi al carrello";
      acquistaColl = "Acquista per collaboratori";
      selectColl = "Seleziona un collaboratore tramite il suo codice sponsor";
      code = "Codice";
      codeNoValido = "Codice sponsor non valido";
      prodottoAcqPer = "Il prodotto verrà acquistato per";
      noAcquisto = "Non è possibile proseguire con l'acquisto";
      sorry = "Ci scusiamo per il disagio";
      textBuyPop1 = "Nella prossima pagina dovrai";
      textBuyPop2 = "scegliere con attenzione l'indirizzo";
      textBuyPop3 = "di spedizione e lo spedizioniere,";
      textBuyPop4 = "continuare";
      continuare = "Continua";
      prodottoElim = "Prodotto eliminato";
      textDeleteCart1 = "Sicuro di voler eliminare";
      textDeleteCart2 = "il prodotto dal carrello?";
      logoutText = "Voui eseguire il Logout?";
      backHome = "Torna alla Home";
      buy = "Acquista";
      prodottoAggiornato = "Prodotto aggiornato";
      ricercaProdotto = "Ricerca prodotto";
      noSearch = "Nessun prodotto cercato";
      spedizione = "Spedizione";
      ritiroSede = "Ritiro sede";
      textAddress1 = "Seleziona un indirizzo di spedizione";
      addAddress = "Aggiungi indirizzo";
      typeSped = "Tipologia spedizione";
      login = "Accedi";
      textAddress2 = "Seleziona una sede per il ritiro";
      extiBuy = "Sicuro di voler abbandonare l'acquisto?";
      loadingData = "Caricamento dei dati";
      speditoDa = "Spedito da";
      costiSped = "Costi di spedizione";
      finalCost = "Importo finale";
      addressSped = "Indirizzo di spedizione";
      selectPayText1 = "Selezione uno dei metodi di pagamento";
      pay1 = "Pagamento con bonifico";
      pay2 = "Pagamento con contrassegno";
      pay3 = "Pagamento con PayPal";
      errorPay = "Impossibile procedere";
      congratulation1 = "Gentile cliente";
      congratulation2 = "Congratulazioni";
      congratulation3 = "Il suo ordine è stato preso in carico.";
      concludi = "Concludi ordine";
      conclusi = "Ordini conclusi";
      welcome = "Benvenuto su Imperya!";
      welcome2 = "Seleziona una lingua prima di continuare";
      pagamentotra = "Pagamento tramite";
      selectCoupon = "Seleziona un coupon";
      bonus1 = "Seleziona un account";
      bonus2 = "per accedere al bonus";
      netto = "Netto";
      speso = "Speso";
      rimanente = "Rimanente";
      final1 = "Complimenti, il tuo ordine";
      final2 = "è andato a buon fine";
      final3 = "Errore nell'operazione di pagamento";
      impCoin1 = "Imperya coin spendibili";
      impCoin2 = "Imperya coin spesi";
      impCoin3 = "Seleziona Buono";
      impCoin4 = "Valore buono";
      misto1 = "Seleziona la prima";
      misto2 = "Seleziona la seconda";
      misto3 = "modalità di pagamento";
      garante = "Garante";
      contrassegno = "Contrassegno";
      bonifico = "Bonifico";
      garante1 = "Inserisci il codice del leader";
      garante2 = "che garantirà l'ordine";
      garanziaResp1 = "problema con la ricerca del garante";
      garanziaResp2 =
          "La sua richiesta è stata inoltrata.Non appena riceveremo conferma provvederemo alla spedizione.";
      garanziaResp3 = "Il tuo garante è";
      garanziaResp4 = "Al momento non è possibile usare questo garante.";
      impProcedere = "Impossibile procedere";
      log1 = "username e password obbligatori";
      log2 = "Username e/o password errata";
      log3 = "Controlla le tue credenziali e riprova";
      log4 = "Attenzione";
      log5 = "Troppe sessioni attive in contemporanea, prova più tardi";
      log5 = "Problema di connessione";
      log6 = "Hai superato il numero massimo di tentativi";
      aggiorna = "Aggiorna";
      address1 = "L\'indirizzo selezionato è";
      address2 =
          "Hai scelto di effettuare il ritiro in sede presso la struttura di ";
      info1 = "Dettaglio utente";
      info2 = "Utente attivo";
      info3 = "Utente non attivo";
      info4 = "Registrato in data";
      info5 = "Informazioni di rete";
      info6 = "Codice referente";
      info7 = "Compenso";

      gennaio = "Gennaio";
      febbraio = "Febbraio";
      marzo = "Marzo";
      aprile = "Aprile";
      maggio = "Maggio";
      giugno = "Giugno";
      luglio = "Luglio";
      agosto = "Agosto";
      settembre = "Settembre";
      ottobre = "Ottobre";
      novembre = "Novembre";
      dicembre = "Dicembre";
      his1 = "Storico utente";
      his2 = "Compenso mese corrente";
      his3 = "Filtro anno";
      his4 = "Filtro mese";
      his5 = "e guadagni";
      his6 = "Guadagno rivendita";
      bonusAuto = "Bonus auto";
      bonusEstate = "Bonus estate";
      bonusInverno = "Bonus inverno";
      bonusRete = "Bonus rete";
      his7 = "Guadagno differenza";
      nomeObl = "Attenzione il nominativo è obbligatorio";
      buonAggAddress = "Aggiornamento andato a buon fine!";
      errorIndirizzo =
          "Non è possibile caricare l'indirizzo, verifica tutti i campi";
      compDati = "Compila tutti i dati";
      addressIsAdd = "Indirizzo aggiunto correttamente!";
      ob1 = "Città obbligatoria";
      ob2 = "Provincia obbligatoria";
      ob3 = "Paese obbligatorio";
      ob4 = "Cod.postale obbligatorio";
      ob5 = "Civico obbligatorio";
      addAddr = "Aggiungi indirizzo di spedizione";
      dataDest = "Dati destinatario";
      dest = "Destinazione";
      civ = "Civico";
      cap = "Cap";
      delAddr = "Cancellare questo indirizzo";
      noCodeKit = "Codice kit non valido";
      notif = "Notifiche";
      inLav = "Ordini in lavorazione";
      bonuSpendibili = "Bonus spendibili";
      classifica = "Classifica";
      endContest = "Contest Terminato";
      scadContest = "Il contest termina il : ";
      premi = "Premi";
      posizione = "Posizione";
      nominativo = "Nominativo";
      noPremi = "Nessun premio";
      noContest = "Non ci sono contest";
      organizzato = "Organizzato da: ";
      lookclass = "Vedi la classifica del contest";
      garanzie = "Garanzie";
      conEven = "Cont/Event";
      requestGar = "Richiesta garanzia di: ";
      myRequest = "Richieste di Garanzia";
      noRequest = "Non ci sono richieste di garanzia.";
      storicoGar = "Storico garanzie";
      richiestaAcc = "Richiesta accettata";
      richiestaRif = "Richiesta rifiutata";
      myContest = "Contest da me creati";
      noMyContest = "Non hai creato nessun contest ancora.";
      inSvolgimento = "Contest in svolgimento.";
      myEvent = "Eventi da me creati";
      noMyEvent = "Nessuna evento da te creato";
      dataIni = "Data inizio: ";
      dataFin = "Data fine: ";
      stato = "Stato: ";
      dataAcce = "Data accettazione";
      dataRichiesta = "Data richiesta:";
      garantisci = "Garantisci";
      noGarantisci = "Rifiuta";
      scadenza = "Scadenza";
      manuntenzione =
          "Stiamo lavorando per rendere migliore la tua esperienza. Ci scusiamo del disagio.";
      shopNoLogin = "Continua senza login";
      buyNoLogin = "Per eseguire l'acquisto devi eseguire l'accesso";
      freeProduct = "Prodotto in omaggio";
    }
    //
    //
    //
    //inglese
    //
    //
    //
    if (prefs.getlanguage == "inglese") {
      ln = "en";
      language = "English";
      user = "User";
      ricordami = "Remember me";
      passwordDimeticata = "Forgotten password?";
      registrati = "of Sign-up";
      shop = "Shop";
      profilo = "Profile";
      rete = "Network";
      ordini = "My orders";
      info = "Info";
      impostazioni = "Settings";
      logout = "Logout";
      texShop1 = "Our Essences";
      texShop2 = "Our Lines";
      texShop3 = "Latest products";
      preferiti = "Favourite";
      carrello = "Cart";
      riepilogo = "Cart";
      carrelloVoid = "Cart is empty";
      textSet1 = "Theme";
      textSet2 = "Select language";
      textSet3 = "Turn on notifications";
      textSet4 = "Turn off notifications";
      textInfo1 = "Activity plan";
      textInfo2 = "Regulations";
      textInfo3 = "Compensation Plan";
      textInfo4 = "Product List";
      textInfo5 = "Catalogues";
      altreInfo = "Other info";
      codicePersonale = "Personal code";
      tipoNetworker = "Networker type";
      puntiRete = "Network points";
      puntiDiretti = "Direct points";
      utenti = "Users";
      myNetwork = "Your network";
      textOrdini1 = "List of orders";
      textOrdini2 = "you've placed";
      loadingOrdini = "order upload";
      daPagare = "to pay ";
      attesa = "waiting";
      nonRitirato = "not taken";
      textListTile1 = "Order of the ";
      textListTile2 = "State";
      address = "Address";
      login = "Login";
      sedeAddress = "Pick-up on site";
      total = "Total";
      ricevuta = "Receipt";
      dettagliOrd = "Order details";
      errorLoadData = "Problem loading data";
      si = "yes";
      riprova = "Try again";
      uscitaApp = "Want to exit?";
      ordine = "Order";
      del = "of";
      prodottiAcq = "Products purchased";
      dropdownValue = "Search user for: ";
      dropdownValue2 = "Select qualification";
      textOne = "Select search filter";
      textTwo = "and enter the text for the search";
      textOne1 = "Select qualification";
      textTwo1 = "to search";
      textOne2 = "Select two reference dates";
      textTwo2 = "Max period 12 days";
      textTwo3 = "Enter a first and/or last name";
      textTwo4 = "Enter a personal code";
      textTwo5 = "Enter a digit";
      searchUserTo = "Search user for";
      nomeCognome = "Name and lastname";
      periodoIscr = "Registration period";
      qualifica = "Qualification";
      fatturatoRete = "Network turnover";
      fatturatoDiretto = "Direct turnover";
      ricerca = "Search";
      noUtenti = "No users found";
      da = "from";
      delete = "Delete";
      networkProblemOf = "Network issues: ";
      loadUserData = "Loading user data";
      searchUser = "Search user";
      searchRete = "Network search";
      indice = "Index";
      netOf = "Network of: ";
      indietro = "Back";
      paginaPrinc = "Main page";
      riprovaPiuTardi = "Try again later";
      docs = "Documents";
      camera = "Cam";
      galleria = "Gallery";
      nome = "Name";
      secondoNome = "Second name";
      cognome = "Lastname";
      networkType = "Network type";
      networkCompany = "Type of collaborator/Company";
      datiu = "User data";
      datif = "Billing data";
      cf = "tax code";
      datanascita = "Date of born";
      cittadinanza = "Citizenship";
      residenza = "Address of residence";
      nazione = "Nation";
      prov = "Province";
      comune = "Municipality";
      telefono = "Phone number";
      contatti = "Contacts";
      nazres = "Country to which they belong";
      resfis = "Tax residence";
      pti = "VAT";
      codsdi = "Code SDI";
      docs1 = "Identification document";
      docs2 = "Secondary recognition document";
      let1 = "Assignment Letter* (page 1 or all)";
      let2 = "Attach Page 2 of Letter of Assignment";
      let3 = "Attach Page 3 of Letter of Assignment";
      req1 = "Supplementary code";
      req2 = "Code Disposal";
      req3 = "Code Cancellation Request";
      prezzoListino = "List price";
      prezzoScontato = "Discounted price";
      provig = "Provideable";
      destinatario = "Recipient";
      quantita = "Amount";
      subtotale = "Subtotal";
      punti = "Points";
      noQuantita = "no quantity selected";
      noProdotto = "Product not";
      disponibile = "available";
      descrizione = "Description";
      welcome = "Welcome to Imperya!";
      welcome2 = "Select a language to continue";
      codiceListino = "Product code";
      aggiungiCarrello = "add cart";
      aggiungiColl = "+ for partner";
      prodottoAggiunto = "Added product";
      alCarrello = "to cart";
      selezionaOpzioni = "Choose one of the following options";
      acquistaCarrello = "Add to cart";
      acquistaColl = "Buy for partener";
      selectColl = "Select a contributor through its sponsor code";
      code = "Code";
      codeNoValido = "Invalid sponsor code";
      prodottoAcqPer = "The product will be purchased for";
      noAcquisto = "It is not possible to continue with the purchase";
      sorry = "We apologize for the inconvenience";
      textBuyPop1 = "On the next page you will have to";
      textBuyPop2 = "carefully choose the address";
      textBuyPop3 = "of shipping and the shipper,";
      textBuyPop4 = "continue";
      continuare = "Continue";
      prodottoElim = "Delete product";
      textDeleteCart1 = "Sure you want to delete";
      textDeleteCart2 = "the product from the cart?";
      logoutText = "Do you want to logout?";
      backHome = "Back to Home";
      buy = "Buy";
      prodottoAggiornato = "Updated product";
      ricercaProdotto = "Search Product";
      noSearch = "No product searched";
      spedizione = "Expedition";
      ritiroSede = "Seat withdrawal";
      textAddress1 = "Select a shipping address";
      addAddress = "Add address";
      typeSped = "Type expedition";
      textAddress2 = "Select a location for collection";
      extiBuy = "Are you sure you want to abandon the purchase?";
      loadingData = "Loading data";
      speditoDa = "Shipped from";
      costiSped = "Shipping cost";
      finalCost = "Final amount";
      addressSped = "Shipping address";
      selectPayText1 = "Select one of the payment methods";
      pay1 = "Payment by bank transfer";
      pay2 = "Cash on delivery";
      pay3 = "Payment by PayPal";
      errorPay = "Impossible to proceed";
      congratulation1 = "Dear customer";
      congratulation2 = "Congratulations";
      congratulation3 = "Your order has been taken over.";
      concludi = "Finish order";
      conclusi = "Orders concluded";

      pagamentotra = "Payment with";
      selectCoupon = "Select a coupon";
      bonus1 = "Select one account";
      bonus2 = "to access the bonus";
      netto = "Net";
      speso = "Spent";
      rimanente = "Remaining";
      final1 = "Congratulations, your order";
      final2 = "has been successful";
      final3 = "Error in payment transaction";
      impCoin1 = "Imperya coin expendable";
      impCoin2 = "Imperya coin spent";
      impCoin3 = "Select voucher";
      impCoin4 = "Voucher value";
      misto1 = "Select the first";
      misto2 = "Select the second";
      misto3 = "payment method";
      garante = "Ensures";
      contrassegno = "On-site payment";
      bonifico = "Wire transfer";
      garante1 = "Enter the leader's code";
      garante2 = "that will guarantee the order";
      garanziaResp1 = "Problem with the search for the guarantor";
      garanziaResp2 =
          "Your request has been made. As soon as we receive confirmation we will ship.";
      garanziaResp3 = "Your guarantor is";
      garanziaResp4 = "At the moment it is not possible to use this guarantor.";
      impProcedere = "Unable to proceed";
      log1 = "required username and password";
      log2 = "Incorrect username and/or password";
      log3 = "Check your credentials and try again";
      log4 = "Attention";
      log5 = "Too many sessions active at the same time, try later";
      log5 = "Connection problem";
      log6 = "You have exceeded the maximum number of attempts";
      aggiorna = "Update";
      address1 = "The selected address is";
      address2 = "You have chosen to pick up at the site in ";
      info1 = "User details";
      info2 = "Active user";
      info3 = "Inactive user";
      info4 = "Recorded on";
      info5 = "Network information";
      info6 = "Referent code";
      info7 = "Compensation";

      gennaio = "January";
      febbraio = "February";
      marzo = "March";
      aprile = "April";
      maggio = "May";
      giugno = "June";
      luglio = "July";
      agosto = "August";
      settembre = "September";
      ottobre = "October";
      novembre = "November";
      dicembre = "December";
      his1 = "User history";
      his2 = "Current month compensation";
      his3 = "Year filter";
      his4 = "Month filter";
      his5 = "and earnings";
      his6 = "Resale gain";
      his7 = "Difference gain";

      bonusAuto = "Bonus auto";
      bonusEstate = "Bonus summer";
      bonusInverno = "Bonus  winter";
      bonusRete = "Bonus network";

      nomeObl = "Attention the name is mandatory";
      buonAggAddress = "Successful update!";
      errorIndirizzo = "You cannot load the address, check all fields";
      compDati = "Fill in all data";
      addressIsAdd = "Address added correctly!";

      ob1 = "Mandatory City";
      ob2 = "Mandatory Province";
      ob3 = "Mandatory country";
      ob4 = "Mandatory Postal Code";
      ob5 = "Mandatory Civic";
      addAddr = "Add Shipping Address";
      dataDest = "Recipient Data";
      dest = "Destination";
      civ = "Civic";
      cap = "Postal code";
      delAddr = "Clear this address?";
      noCodeKit = "Kit code not valid";
      notif = "Notification";
      inLav = "Orders in process";
      bonuSpendibili = "Expendable bonuses";
      classifica = "Ranking";
      endContest = "Contest Terminated";
      scadContest = "The contest ends on : ";
      premi = "Prizes";
      posizione = "Position";
      nominativo = "Nominative";
      noPremi = "No prizes";
      noContest = "There are no contests";
      organizzato = "Organized by: ";
      lookclass = "See the contest leaderboard";
      garanzie = "Guarantees";
      conEven = "Contests and events";
      requestGar = "Warranty Request for: ";
      myRequest = "Warranty Requests";
      noRequest = "There are no warranty requests.";
      storicoGar = "Historical guarantees";
      richiestaAcc = "Request accepted";
      richiestaRif = "Richiesta rejected";
      myContest = "My contest";
      noMyContest = "You haven't created any contests yet";
      inSvolgimento = "Contest in progress.";
      myEvent = "My event";
      noMyEvent = "No event you created";
      dataIni = "Start Date: ";
      dataFin = "End Date: ";
      stato = "State: ";
      dataAcce = "Acceptance date";
      dataRichiesta = "Requested date:";
      garantisci = "Guarantee";
      noGarantisci = "Reject";
      scadenza = "Expiration";
      manuntenzione =
          "We are working to make your experience better. We apologize for the inconvenience.";
      shopNoLogin = "Continue without login";
      buyNoLogin = "You must be signed in to make the purchase";
      freeProduct = "Free product";
    }
    //
    //
    //
    //francese
    //
    //
    //
    if (prefs.getlanguage == "francese") {
      ln = "fr";
      language = "French";
      user = "User";
      ricordami = "Rappelle-moi";
      passwordDimeticata = "Mot de passe oublié ?";
      registrati = "par S'inscrire";
      shop = "Acheter en ligne";
      profilo = "Profil";
      rete = "Réseau";
      ordini = "Mes ordres";
      info = "Info";
      impostazioni = "Paramètres";
      logout = "Session de clôture";
      texShop1 = "Nos Essences";
      texShop2 = "Nos Lignes";
      texShop3 = "Derniers Produits";
      preferiti = "Sauve";
      carrello = "Panier";
      riepilogo = "Panier";
      carrelloVoid = "Chariot vide";
      textSet1 = "Thème";
      textSet2 = "Sélectionnez la langue";
      textSet3 = "Activer les notifications";
      textSet4 = "Désactiver les notifications";
      textInfo1 = "Plan d’activités";
      textInfo2 = "Règlements";
      textInfo3 = "Plan de Rémunération";
      textInfo4 = "Liste des Produits";
      textInfo5 = "Catalogues";
      altreInfo = "Autres info";
      codicePersonale = "Code personnel";
      tipoNetworker = "Networker type";
      puntiRete = "Réseau points";
      puntiDiretti = "Directs points";
      utenti = "Utilitaires";
      myNetwork = "Votre réseau";
      textOrdini1 = "Liste des commandes";
      textOrdini2 = "que vous avez fait";
      loadingOrdini = "charge les commandes";
      daPagare = "à payer";
      attesa = "Attente";
      nonRitirato = "non retiré";
      textListTile1 = "Ordre de";
      textListTile2 = "ètat";
      address = "Adresse";
      sedeAddress = "Ramassage sur place";
      total = "Total";
      ricevuta = "reçu ";
      dettagliOrd = "détails de la commande";
      errorLoadData = "Données de chargement problématiques";
      si = "Oui";
      riprova = "Réessayez";
      uscitaApp = "Vous voulez quitter l’application?";
      ordine = "Ordre";
      del = "de la";
      prodottiAcq = "Produits achetés";
      dropdownValue = "Rechercher l’utilisateur pour: ";
      dropdownValue2 = "Sélectionnez Qualification";
      textOne = "Sélectionnez filtre de recherche";
      textTwo = "et entrez le texte pour la recherche";
      textOne1 = "Sélectionnez la qualification";
      textTwo1 = "pour la recherche";
      textOne2 = "Sélectionnez deux dates de référence";
      textTwo2 = "Période maximale 12 jours";
      textTwo3 = "Entrez un prénom et/ou un nom de famille";
      textTwo4 = "Entrez un code personnel";
      textTwo5 = "Entrez un chiffre";
      searchUserTo = "Rechercher l’utilisateur pour";
      nomeCognome = "Prénom et nom de famille";
      periodoIscr = "Période d’inscription";
      qualifica = "Qualification";
      fatturatoRete = "Chiffre d’affaires du réseau";
      fatturatoDiretto = "Chiffre d’affaires direct";
      ricerca = "Rechercher";
      noUtenti = "Aucun utilisateurs trouvé";
      da = "de";
      delete = "Supprimer";
      networkProblemOf = "Problèmes de réseau: ";
      loadUserData = "Chargement des données utilisateur";
      searchUser = "Utilisateur de recherche";
      searchRete = "recherche réseau";
      indice = "Index";
      netOf = "Réseau de: ";
      indietro = "Précédent";
      paginaPrinc = "Page principale";
      riprovaPiuTardi = "Réessayer plus tard";
      docs = "Documents";
      camera = "Chambre";
      galleria = "Galerie";
      nome = "Nom";
      secondoNome = "deuxième prénom";
      cognome = "Nom de famille";
      networkType = "Type de réseau";
      networkCompany = "Type de collaborateur/Société";
      datiu = "Données utilisateur";
      datif = "Données de facturation";
      cf = "code des impôts";
      datanascita = "Date de naissance";
      cittadinanza = "Citoyenneté";
      residenza = "Adresse de résidence";
      nazione = "Nation";
      prov = "Province";
      comune = "Commune";
      telefono = "Numéro de téléphone";
      contatti = "Contacts";
      nazres = "Pays auquel ils appartiennent";
      resfis = "Résidence fiscale";
      pti = "TVA";
      codsdi = "Code SDI";
      docs1 = "Document d’identification";
      docs2 = "Document de reconnaissance secondaire";
      let1 = "Lettre d’affectation* (page 1 ou tout)";
      let2 = "Joindre la page 2 de la lettre d’affectation";
      let3 = "Joindre la page 3 de la lettre d’affectation";
      req1 = "Code supplémentaire";
      req2 = "Élimination du code";
      req3 = "Demande d’annulation de code";
      prezzoListino = "Prix de liste";
      prezzoScontato = "Prix réduit";
      provig = "Provideable";
      destinatario = "Destinataire";
      quantita = "Montant";
      subtotale = "Sous-total";
      punti = "Points";
      noQuantita = "aucune quantité sélectionnée";
      noProdotto = "Produit non";
      disponibile = "disponible";
      descrizione = "Description";
      codiceListino = "Code produit";
      aggiungiCarrello = "+ au chariot";
      aggiungiColl = "+ pour partenaire";
      prodottoAggiunto = "Produit ajouté";
      alCarrello = "au chariot";
      selezionaOpzioni = "Choisissez l’une des options suivantes";
      acquistaCarrello = "Ajouter au panier";
      acquistaColl = "Acheter pour partener";
      selectColl = "Sélectionnez un contributeur via son code sponsor";
      code = "Code";
      codeNoValido = "Code de sponsor invalide";
      prodottoAcqPer = "Le produit sera acheté pour";
      noAcquisto = "Il n’est pas possible de poursuivre l’achat";
      sorry = "Nous nous excusons pour les inconvénients";
      textBuyPop1 = "Sur la page suivante, vous devrez";
      textBuyPop2 = "choisissez soigneusement l’adresse";
      textBuyPop3 = "d’expédition et de l’expéditeur,";
      textBuyPop4 = "Continuer";
      continuare = "Continue";
      prodottoElim = "produit supprimé";
      textDeleteCart1 = "Bien sûr, vous voulez supprimer";
      textDeleteCart2 = "le produit du chariot?";
      logoutText = "Voulez-vous logout?";
      backHome = "Accueil";
      buy = "Acheter";
      login = "Login";
      prodottoAggiornato = "Produit mis à jour";
      ricercaProdotto = "Rechercher un produit";
      noSearch = "Nessun prodotto cercato";
      spedizione = "Expédition";
      ritiroSede = "Retrait de siège";
      textAddress1 = "Sélectionnez une adresse de livraison";
      addAddress = "Ajoutez l'adresse";
      typeSped = "Type d'expédition";
      textAddress2 = "Sélectionnez un emplacement pour la collecte";
      extiBuy = "Voulez-vous vraiment abandonner l'achat?";
      loadingData = "Chargement des données";
      speditoDa = "Expédié de";
      costiSped = "Frais de port";
      finalCost = "Le montant final";
      addressSped = "Adresse de livraison";
      selectPayText1 = "Sélectionnez l'un des modes de paiement";
      pay1 = "Paiement par virement bancaire";
      pay2 = "Paiement à la livraison";
      pay3 = "Paiement par PayPal";
      errorPay = "Impossible de procéder";
      congratulation1 = "Cher client";
      congratulation2 = "Félicitations";
      congratulation3 = "Votre commande a été prise en charge.";
      concludi = "Ordre de finition";
      conclusi = "Commandes conclues";

      pagamentotra = "Paiement avec";
      selectCoupon = "Sélectionner un coupon";
      bonus1 = "sélectionnez un compte";
      bonus2 = "pour accéder au bonus";
      netto = "Net";
      speso = "Passé";
      rimanente = "Restant";
      final1 = "Félicitations, votre commande ";
      final2 = "a été couronnée de succès jusqu’à présent";
      final3 = "Erreur dans la transaction de paiement";
      impCoin1 = "Imperya coin consommable";
      impCoin2 = "Imperya coin dépensé";
      impCoin3 = "Sélectionner le bon";
      impCoin4 = "Valeur du bon";
      misto1 = "Sélectionnez le premier";
      misto2 = "Sélectionnez le deuxième ";
      misto3 = "mode de paiement";
      garante = "Sponsor";
      contrassegno = "Paiement sur place";
      bonifico = "Virement";
      garanziaResp1 = "Problème avec la recherche du garant";
      garanziaResp2 =
          "Votre demande a été faite. Dès que nous recevrons la confirmation, nous expédierons.";
      garanziaResp3 = "votre garant est";
      garanziaResp4 =
          "Pour le moment, il n’est pas possible d’utiliser ce garant.";
      impProcedere = "Impossible d’aller de l’avant";
      log1 = "nom d’utilisateur et mot de passe requis";
      log2 = "Nom d’utilisateur/password incorrect";
      log3 = "Vérifiez vos informations d’identification et réessayer";
      log4 = "Attention";
      log5 = "Trop de sessions actives en même temps, essayez plus tard";
      log5 = "Problème de connexion";
      log6 = "Vous avez dépassé le nombre maximum de tentatives";

      aggiorna = "Mettre à jour";
      address1 = "L’adresse sélectionnée est";
      address2 = "Vous avez choisi de venir chercher sur le site en ";
      info1 = "Détail de l’utilisateur";
      info2 = "Utilisateur actif";
      info3 = "Utilisateur inactif";
      info4 = "Enregistré le";
      info5 = "Informations réseau";
      info6 = "Code référent";
      info7 = "Compensation";

      gennaio = "Janvier";
      febbraio = "Février";
      marzo = "Mars";
      aprile = "Avril";
      maggio = "Mai";
      giugno = "Juin";
      luglio = "Juillet";
      agosto = "Août";
      settembre = "Septembre";
      ottobre = "Octobre";
      novembre = "Novembre";
      dicembre = "Décembre";
      his1 = "Historique des utilisateurs";
      his3 = "Filtre d’année";
      his4 = "Filtre mois";
      his5 = "et les bénéfices";
      his6 = "Gain de revente";
      his7 = "Gain de différence";

      bonusAuto = "Bonus auto";
      bonusEstate = "Bonus domaine";
      bonusInverno = "Bonus  hiver";
      bonusRete = "Bonus réseau";

      nomeObl = "Attention le nom est obligatoire";
      buonAggAddress = "Mise à jour réussie!";
      errorIndirizzo =
          "Vous ne pouvez pas charger l’adresse, vérifier tous les champs";
      compDati = "Remplir toutes les données";
      addressIsAdd = "Adresse ajoutée correctement!";

      ob1 = "Ville obligatoire";
      ob2 = "Province obligatoire";
      ob3 = "Pays obligatoire";
      ob4 = "Code postal obligatoire";
      ob5 = "Civic obligatoire";
      addAddr = "Ajouter l’adresse d’expédition";
      dataDest = "Données destinataires";
      dest = "Destination";
      civ = "Civic";
      cap = "Code postal";
      delAddr = "Effacer cette adresse?";
      noCodeKit = "Code kit non valide";
      notif = "Notification";
      inLav = "Commandes en cours d’élaboration";
      bonuSpendibili = "Bonus à dépenser";
      classifica = "Classement";
      endContest = "Concours terminé";
      scadContest = "Le concours se termine le : ";
      premi = "Prime";
      posizione = "Position";
      nominativo = "Nominatif";
      noPremi = "Pas de prime";
      noContest = "Il n’y a pas de concours";
      organizzato = "Organisé par: ";
      lookclass = "Voir le classement du concours";
      garanzie = "Garanties";
      conEven = "Concours et événements";
      requestGar = "Demande de garantie pour: ";
      myRequest = "Demandes de garantie ";
      noRequest = "Il n’y a pas de demandes de garantie.";
      storicoGar = "Historique des garanties";
      richiestaAcc = "Demande acceptée";
      richiestaRif = "Demande refusée";
      myContest = "Mon concours";
      noMyContest = "Vous n’avez pas encore créé de concours.";
      inSvolgimento = "Concours en cours.";
      myEvent = "Mon event";
      noMyEvent = "Aucun événement que vous avez créé";
      dataIni = "Date de début: ";
      dataFin = "Date de fin: ";
      stato = "Etat: ";
      dataAcce = "Date d’acceptation";
      dataRichiesta = "Date demandée:";
      garantisci = "Garantir";
      noGarantisci = "Refuser";
      welcome = "Bienvenue à Imperya! ";
      welcome2 = "Sélectionner une langue pour continuer ";
      scadenza = "échéance";
      manuntenzione =
          "Nous travaillons à améliorer votre expérience. Nous nous excusons pour l’inconfort.";
      shopNoLogin = "Continuer sans connexion";
      buyNoLogin = "Pour effectuer l’achat, vous devez vous connecter";
      freeProduct = "Produit gratuit";
    }
    //
    //
    //
    //spagnolo
    //
    //
    //
    if (prefs.getlanguage == "spagnolo") {
      ln = "es";
      language = "Español";
      user = "Usuario";
      ricordami = "Requerda";
      passwordDimeticata = "contraseña olvidada ?";
      registrati = "Registro";
      shop = "Shop";
      profilo = "Perfil";
      rete = "Red";
      ordini = "Mis pedidos";
      info = "Info";
      impostazioni = "Configuración";
      logout = "Logout";
      texShop1 = "Nuestras Esencias";
      texShop2 = "Nuestras Lineas";
      texShop3 = "Últimos productos";
      preferiti = "Favoritos";
      carrello = "Carretilla";
      riepilogo = "Carretilla";
      carrelloVoid = "Carrito vacío";
      textSet1 = "Tema";
      textSet2 = "Seleccionar idioma";
      textSet3 = "Activar las notificaciones";
      textSet4 = "desactivar las notificaciones";
      textInfo1 = "Plan de actividades";
      textInfo2 = "Normativa";
      textInfo3 = "Plan de Compensación";
      textInfo4 = "Listino prodotLista de productosti";
      textInfo5 = "Catálogos";
      altreInfo = "Más info";
      login = "Iniciar sesión";
      codicePersonale = "Código personal";
      tipoNetworker = "Tipo de networker";
      puntiRete = "Puntos de red";
      puntiDiretti = "Puntos directos";
      utenti = "Usuarios";
      myNetwork = "Su red";
      textOrdini1 = "Lista de pedidos";
      textOrdini2 = "que ha realizado";
      loadingOrdini = "carga de pedidos";
      daPagare = "a pagar";
      attesa = "espera";
      nonRitirato = "no retirado";
      textListTile1 = "Orden de";
      textListTile2 = "Estado";
      address = "Dirección";
      sedeAddress = "Recogida en el sitio";
      total = "Total";
      ricevuta = "recibo";
      dettagliOrd = "detalles del pedido";
      errorLoadData = "Problema al cargar datos";
      si = "si";
      riprova = "ententar";
      uscitaApp = "¿Quieres salir de la aplicación?";
      ordine = "Orden";
      del = "del";
      prodottiAcq = "Productos adquiridos";
      dropdownValue = "Buscar usuarios por: ";
      dropdownValue2 = "Seleccionar calificación";
      textOne = "Seleccione el filtro de búsqueda";
      textTwo = "e introduzca el texto de la búsqueda";
      textOne1 = "Seleccione una calificación";
      textTwo1 = "para la búsqueda";
      textOne2 = "Seleccione dos fechas de referencia";
      textTwo2 = "Período máximo 12 días";
      textTwo3 = "Introduzca un nombre y/o apellido";
      textTwo4 = "Introduzca un código personal";
      textTwo5 = "Introduzca un dígito";
      searchUserTo = "Búsqueda de usuarios por ";
      nomeCognome = "Nombre y apellidos";
      periodoIscr = "Periodo de inscripción";
      qualifica = "Calificación";
      fatturatoRete = "Rotación de la red";
      fatturatoDiretto = "Facturación directa";
      ricerca = "Buscar";
      noUtenti = "No se han encontrado usuarios";
      da = "da";
      delete = "Eliminar";
      networkProblemOf = "Problemas con la red: ";
      loadUserData = "Carga de datos de usuario";
      searchUser = "Búsqueda de usuarios";
      searchRete = "Ricerca di rete";
      indice = "Índice";
      netOf = "Red de: ";
      indietro = "Atras";
      paginaPrinc = "Pagina principal";
      riprovaPiuTardi = "Intentelo mas Tarde";
      docs = "Documentos";
      camera = "Camera";
      galleria = "Galería";
      nome = "Nombre";
      secondoNome = "Segundo nombre";
      cognome = "Apellido";
      networkType = "Network type";
      networkCompany = "Tipo de colaborador/Empresa";
      datiu = "Datos del usuario";
      datif = "Información de facturación";
      cf = "Código fiscal";
      datanascita = "Fecha de nacimiento";
      cittadinanza = "Ciudadanía";
      residenza = "Dirección residencial";
      nazione = "Nación";
      prov = "Provincia";
      comune = "Municipio/Ciudad";
      telefono = "Telefono";
      contatti = "Contactos";
      nazres = "País de origen";
      resfis = "Residencia fiscal";
      pti = "iva";
      codsdi = "Código SDI";
      docs1 = "Documento de identificación";
      docs2 = "Documento de identificación secundario";
      let1 = "Carta de asignación* (página 1 o todas)";
      let2 = "Adjunte la página 2 de Asignación de carta";
      let3 = "Adjunte la página 3 de Asignación de carta";
      req1 = "Código adicional";
      req2 = "Asignación de código";
      req3 = "Solicitud de cancelación de código";
      prezzoListino = "Lista de precios";
      prezzoScontato = "Precio con descuento";
      provig = "Comisionable";
      destinatario = "Destinatario";
      quantita = "Cantidad";
      subtotale = "SubTotal";
      punti = "Puntos";
      noQuantita = "ninguna cantidad seleccionada";
      noProdotto = "Producto no";
      disponibile = "disponible";
      descrizione = "Descripción";
      codiceListino = "Código de lista";
      aggiungiCarrello = "añadir carrito";
      aggiungiColl = "añadir al colaborador";
      prodottoAggiunto = "Producto añadido";
      alCarrello = "al carrito";
      selezionaOpzioni = "Elija una de las siguientes opciones";
      acquistaCarrello = "Añadir al carrito";
      acquistaColl = "Comprar por colaboradores";
      selectColl = "Selecciona un colaborador a través de su código de sponsor";
      code = "código";
      codeNoValido = "Código sponsor no válido";
      prodottoAcqPer = "El producto se comprará para";
      noAcquisto = "No es posible continuar con la compra";
      sorry = "Pedimos disculpas por las molestias";
      textBuyPop1 = "En la página siguiente que necesitará";
      textBuyPop2 = "elija la dirección cuidadosamente";
      textBuyPop3 = "envío y reenviador";
      textBuyPop4 = "continuar";
      continuare = "Continuar";
      prodottoElim = "Producto eliminado";
      textDeleteCart1 = "Seguro que quieres eliminar";
      textDeleteCart2 = "el producto de su carrito?";
      logoutText = "¿Quires cerrar sesión?";
      backHome = "Volver a Inicio";
      buy = "Comprar";
      prodottoAggiornato = "Producto actualizado";
      ricercaProdotto = "Búsqueda de productos";
      noSearch = "No se han buscado productos";
      spedizione = "Expedición";
      ritiroSede = "Recogida en la sede";
      textAddress1 = "Seleccione una dirección de envío";
      addAddress = "Añadir dirección";
      typeSped = "Tipo de envío";
      textAddress2 = "Seleccione un lugar de recogida";
      extiBuy = "¿Estás seguro de que quieres abandonar la compra?";
      loadingData = "Carga de datos";
      speditoDa = "Enviado por";
      costiSped = "Gastos de envío";
      finalCost = "Importe final";
      addressSped = "Dirección de envío";
      selectPayText1 = "Seleccione uno de los métodos de pago";
      pay1 = "Pago por transferencia bancaria";
      pay2 = "Pago por reembolso";
      pay3 = "Pago por PayPal";
      errorPay = "No se puede continuar";
      congratulation1 = "Estimado cliente";
      congratulation2 = "Felicidades";
      congratulation3 = "Su orden fue asumida.";
      concludi = "Completar pedido";
      conclusi = "Pedidos completados";
      welcome = "¡Bienvenido a Imperya!";
      welcome2 = "Seleccione un idioma antes de continuar";
      pagamentotra = "Pago por";
      selectCoupon = "Selecciona un cupón";
      bonus1 = "Selecciona una cuenta";
      bonus2 = "para acceder al bonus";
      netto = "Neto";
      speso = "Gastado";
      rimanente = "Restante";
      final1 = "Felicitaciones, su pedido";
      final2 = "fue exitoso";
      final3 = "Error en la transacción de pago";
      impCoin1 = "Imperya coin prescindible";
      impCoin2 = "Imperya coin gastado";
      impCoin3 = "Seleccionar Bueno";
      impCoin4 = "Valor Bueno";
      misto1 = "Seleccionar el primero";
      misto2 = "Seleccionar el segundo";
      misto3 = "método de pago";
      garante = "Garante";
      contrassegno = "Contrassegno";
      bonifico = "Transferencia de crédito";
      garante1 = "Introduzca el código del leader";
      garante2 = "quién garantizará el pedido";
      garanziaResp1 = "problema con la búsqueda del garante";
      garanziaResp2 =
          "Su solicitud ha sido enviada. Tan pronto como recibamos la confirmación, enviaremos el pedido.";
      garanziaResp3 = "Su garante es";
      garanziaResp4 = "Por el momento no es posible utilizar este garante.";
      impProcedere = "No se puede continuar";
      log1 = "nombre de usuario y contraseña requeridos";
      log2 = "Nombre de usuario y/o contraseña incorrectos";
      log3 = "Compruebe sus credenciales e inténtelo de nuevo";
      log4 = "Atención";
      log5 = "Demasiadas sesiones activas al mismo tiempo, inténtalo más tarde";
      log5 = "Problema de conexión";
      log6 = "Ha superado el número máximo de intentos";
      aggiorna = "Actualizar";
      address1 = "La dirección seleccionada es";
      address2 =
          "Usted ha elegido hacer la recolección in situ en las instalaciones de ";
      info1 = "Detalle del usuario";
      info2 = "Usuario activo";
      info3 = "Usuario inactivo";
      info4 = "Registrado en";
      info5 = "Información de red";
      info6 = "Código de referencia";
      info7 = "Compensación";

      gennaio = "Enero";
      febbraio = "Febrero";
      marzo = "Marzo";
      aprile = "Abril";
      maggio = "Mayo";
      giugno = "Junio";
      luglio = "Julio";
      agosto = "Agosto";
      settembre = "Septiembre";
      ottobre = "Octubre";
      novembre = "Noviembre";
      dicembre = "Diciembre";
      his1 = "Historial de usuarios";
      his2 = "Compensación del mes actual";
      his3 = "Filtro de año";
      his4 = "Filtro de mes";
      his5 = "y ganancias";
      his6 = "Ganancia de reventa";
      bonusAuto = "Bonus auto";
      bonusEstate = "Bonus verano";
      bonusInverno = "Bonus invierno";
      bonusRete = "Bonus red";
      his7 = "Diferencia de ganancia";
      nomeObl = "Atención el nombre es obligatorio";
      buonAggAddress = "¡La actualización se ha realizado correctamente!";
      errorIndirizzo =
          "No se puede cargar la dirección, compruebe todos los campos";
      compDati = "Rellenar todos los datos";
      addressIsAdd = "¡Dirección añadida correctamente!";
      ob1 = "Ciudad obligatoria";
      ob2 = "Provincia Obligatoria";
      ob3 = "País obligatorio";
      ob4 = "Código postal obligatorio";
      ob5 = "Cívico Obligatorio";
      addAddr = "Agregar dirección de envío";
      dataDest = "Datos del destinatario";
      dest = "Destino";
      civ = "Cívico";
      cap = "Cap";
      delAddr = "Eliminar esta dirección";
      noCodeKit = "Código de kit no válido";
      notif = "Notificaciones";
      inLav = "Pedidos en curso";
      bonuSpendibili = "Bonus prescindibles";
      classifica = "Clasificación";
      endContest = "Contest Terminado";
      scadContest = "El contest termina el : ";
      premi = "Premios";
      posizione = "Posición";
      nominativo = "Nominativo";
      noPremi = "Sin premio";
      noContest = "No hay contest";
      organizzato = "Organizado por: ";
      lookclass = "Ver el ranking del contest";
      garanzie = "Garantia";
      conEven = "Cont/Event";
      requestGar = "Solicitud de garantía de: ";
      myRequest = "Reclamaciones de garantía";
      noRequest = "No hay reclamaciones de garantía.";
      storicoGar = "Garantías históricas";
      richiestaAcc = "Solicitud aceptada";
      richiestaRif = "Solicitud rechazada";
      myContest = "Concurso creado por mí";
      noMyContest = "Aún no has creado ningún concurso.";
      inSvolgimento = "Concurso en curso.";
      myEvent = "Eventos creados por mí";
      noMyEvent = "No hay eventos que haya creado";
      dataIni = "Fecha de inicio:";
      dataFin = "Fecha de finalización: ";
      stato = "Estado: ";
      dataAcce = "Fecha de aceptación";
      dataRichiesta = "Fecha solicitada:";
      garantisci = "Asegurar";
      noGarantisci = "Rechaza";
      scadenza = "Expiración";
      manuntenzione =
          "Estamos trabajando para mejorar tu experiencia. Pedimos disculpas por las molestias.";
      shopNoLogin = "Continuar sin iniciar sesión";
      buyNoLogin = "Debe haber iniciado sesión para realizar la compra";
      freeProduct = "Producto gratuito";
    }
  }
}
