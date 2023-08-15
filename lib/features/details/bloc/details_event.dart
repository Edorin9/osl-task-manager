part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.saveInitiated(Task task) = SaveInitiated;
  const factory DetailsEvent.deleteInitiated(Task task) = DeleteInitiated;
}
