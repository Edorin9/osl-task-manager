part of 'details_bloc.dart';

@freezed
class DetailsEvent with _$DetailsEvent {
  const factory DetailsEvent.fieldsUpdated({
    String? title,
    String? description,
    DateTime? dueDate,
  }) = FieldsUpdated;
  const factory DetailsEvent.editModeEntered() = EditModeEntered;
  const factory DetailsEvent.saveInitiated() = SaveInitiated;
  const factory DetailsEvent.deleteInitiated() = DeleteInitiated;
}
