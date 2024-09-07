class HomeState {}

final class HomeInitial extends HomeState {}
// Historical Perioud Data
final class GetHistoricalPeriodsSucces extends HomeState {}

final class GetHistoricalPeriodsFailure extends HomeState {
  final String errmsg;
  GetHistoricalPeriodsFailure({required this.errmsg});
}

final class GetHistoricalPeriodsLoading extends HomeState {}
// Character Data
final class GetCharacterSucces extends HomeState {}
final class GetCharacterFailure extends HomeState {
final String errmsg;
  GetCharacterFailure({required this.errmsg});
}
final class GetCharacterLoading extends HomeState {}
// Souvenirs Data
final class GetSouvenirsLoading extends HomeState {}
final class GetSouvenirsFailure extends HomeState {
final String errmsg;
  GetSouvenirsFailure({required this.errmsg});
}
final class GetSouvenirsSucces extends HomeState {}
