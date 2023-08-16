// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isToggled, String? title,
            String? description, DateTime? dueDate)
        fieldsUpdated,
    required TResult Function() editModeEntered,
    required TResult Function() saveInitiated,
    required TResult Function() deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult? Function()? editModeEntered,
    TResult? Function()? saveInitiated,
    TResult? Function()? deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult Function()? editModeEntered,
    TResult Function()? saveInitiated,
    TResult Function()? deleteInitiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldsUpdated value) fieldsUpdated,
    required TResult Function(EditModeEntered value) editModeEntered,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldsUpdated value)? fieldsUpdated,
    TResult? Function(EditModeEntered value)? editModeEntered,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldsUpdated value)? fieldsUpdated,
    TResult Function(EditModeEntered value)? editModeEntered,
    TResult Function(SaveInitiated value)? saveInitiated,
    TResult Function(DeleteInitiated value)? deleteInitiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res, DetailsEvent>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res, $Val extends DetailsEvent>
    implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FieldsUpdatedCopyWith<$Res> {
  factory _$$FieldsUpdatedCopyWith(
          _$FieldsUpdated value, $Res Function(_$FieldsUpdated) then) =
      __$$FieldsUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {bool? isToggled, String? title, String? description, DateTime? dueDate});
}

/// @nodoc
class __$$FieldsUpdatedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$FieldsUpdated>
    implements _$$FieldsUpdatedCopyWith<$Res> {
  __$$FieldsUpdatedCopyWithImpl(
      _$FieldsUpdated _value, $Res Function(_$FieldsUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isToggled = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueDate = freezed,
  }) {
    return _then(_$FieldsUpdated(
      isToggled: freezed == isToggled
          ? _value.isToggled
          : isToggled // ignore: cast_nullable_to_non_nullable
              as bool?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$FieldsUpdated implements FieldsUpdated {
  const _$FieldsUpdated(
      {this.isToggled, this.title, this.description, this.dueDate});

  @override
  final bool? isToggled;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? dueDate;

  @override
  String toString() {
    return 'DetailsEvent.fieldsUpdated(isToggled: $isToggled, title: $title, description: $description, dueDate: $dueDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldsUpdated &&
            (identical(other.isToggled, isToggled) ||
                other.isToggled == isToggled) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isToggled, title, description, dueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldsUpdatedCopyWith<_$FieldsUpdated> get copyWith =>
      __$$FieldsUpdatedCopyWithImpl<_$FieldsUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isToggled, String? title,
            String? description, DateTime? dueDate)
        fieldsUpdated,
    required TResult Function() editModeEntered,
    required TResult Function() saveInitiated,
    required TResult Function() deleteInitiated,
  }) {
    return fieldsUpdated(isToggled, title, description, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult? Function()? editModeEntered,
    TResult? Function()? saveInitiated,
    TResult? Function()? deleteInitiated,
  }) {
    return fieldsUpdated?.call(isToggled, title, description, dueDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult Function()? editModeEntered,
    TResult Function()? saveInitiated,
    TResult Function()? deleteInitiated,
    required TResult orElse(),
  }) {
    if (fieldsUpdated != null) {
      return fieldsUpdated(isToggled, title, description, dueDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldsUpdated value) fieldsUpdated,
    required TResult Function(EditModeEntered value) editModeEntered,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return fieldsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldsUpdated value)? fieldsUpdated,
    TResult? Function(EditModeEntered value)? editModeEntered,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return fieldsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldsUpdated value)? fieldsUpdated,
    TResult Function(EditModeEntered value)? editModeEntered,
    TResult Function(SaveInitiated value)? saveInitiated,
    TResult Function(DeleteInitiated value)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (fieldsUpdated != null) {
      return fieldsUpdated(this);
    }
    return orElse();
  }
}

abstract class FieldsUpdated implements DetailsEvent {
  const factory FieldsUpdated(
      {final bool? isToggled,
      final String? title,
      final String? description,
      final DateTime? dueDate}) = _$FieldsUpdated;

  bool? get isToggled;
  String? get title;
  String? get description;
  DateTime? get dueDate;
  @JsonKey(ignore: true)
  _$$FieldsUpdatedCopyWith<_$FieldsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditModeEnteredCopyWith<$Res> {
  factory _$$EditModeEnteredCopyWith(
          _$EditModeEntered value, $Res Function(_$EditModeEntered) then) =
      __$$EditModeEnteredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditModeEnteredCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$EditModeEntered>
    implements _$$EditModeEnteredCopyWith<$Res> {
  __$$EditModeEnteredCopyWithImpl(
      _$EditModeEntered _value, $Res Function(_$EditModeEntered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditModeEntered implements EditModeEntered {
  const _$EditModeEntered();

  @override
  String toString() {
    return 'DetailsEvent.editModeEntered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditModeEntered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isToggled, String? title,
            String? description, DateTime? dueDate)
        fieldsUpdated,
    required TResult Function() editModeEntered,
    required TResult Function() saveInitiated,
    required TResult Function() deleteInitiated,
  }) {
    return editModeEntered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult? Function()? editModeEntered,
    TResult? Function()? saveInitiated,
    TResult? Function()? deleteInitiated,
  }) {
    return editModeEntered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult Function()? editModeEntered,
    TResult Function()? saveInitiated,
    TResult Function()? deleteInitiated,
    required TResult orElse(),
  }) {
    if (editModeEntered != null) {
      return editModeEntered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldsUpdated value) fieldsUpdated,
    required TResult Function(EditModeEntered value) editModeEntered,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return editModeEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldsUpdated value)? fieldsUpdated,
    TResult? Function(EditModeEntered value)? editModeEntered,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return editModeEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldsUpdated value)? fieldsUpdated,
    TResult Function(EditModeEntered value)? editModeEntered,
    TResult Function(SaveInitiated value)? saveInitiated,
    TResult Function(DeleteInitiated value)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (editModeEntered != null) {
      return editModeEntered(this);
    }
    return orElse();
  }
}

abstract class EditModeEntered implements DetailsEvent {
  const factory EditModeEntered() = _$EditModeEntered;
}

/// @nodoc
abstract class _$$SaveInitiatedCopyWith<$Res> {
  factory _$$SaveInitiatedCopyWith(
          _$SaveInitiated value, $Res Function(_$SaveInitiated) then) =
      __$$SaveInitiatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveInitiatedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$SaveInitiated>
    implements _$$SaveInitiatedCopyWith<$Res> {
  __$$SaveInitiatedCopyWithImpl(
      _$SaveInitiated _value, $Res Function(_$SaveInitiated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SaveInitiated implements SaveInitiated {
  const _$SaveInitiated();

  @override
  String toString() {
    return 'DetailsEvent.saveInitiated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveInitiated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isToggled, String? title,
            String? description, DateTime? dueDate)
        fieldsUpdated,
    required TResult Function() editModeEntered,
    required TResult Function() saveInitiated,
    required TResult Function() deleteInitiated,
  }) {
    return saveInitiated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult? Function()? editModeEntered,
    TResult? Function()? saveInitiated,
    TResult? Function()? deleteInitiated,
  }) {
    return saveInitiated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult Function()? editModeEntered,
    TResult Function()? saveInitiated,
    TResult Function()? deleteInitiated,
    required TResult orElse(),
  }) {
    if (saveInitiated != null) {
      return saveInitiated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldsUpdated value) fieldsUpdated,
    required TResult Function(EditModeEntered value) editModeEntered,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return saveInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldsUpdated value)? fieldsUpdated,
    TResult? Function(EditModeEntered value)? editModeEntered,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return saveInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldsUpdated value)? fieldsUpdated,
    TResult Function(EditModeEntered value)? editModeEntered,
    TResult Function(SaveInitiated value)? saveInitiated,
    TResult Function(DeleteInitiated value)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (saveInitiated != null) {
      return saveInitiated(this);
    }
    return orElse();
  }
}

abstract class SaveInitiated implements DetailsEvent {
  const factory SaveInitiated() = _$SaveInitiated;
}

/// @nodoc
abstract class _$$DeleteInitiatedCopyWith<$Res> {
  factory _$$DeleteInitiatedCopyWith(
          _$DeleteInitiated value, $Res Function(_$DeleteInitiated) then) =
      __$$DeleteInitiatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteInitiatedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$DeleteInitiated>
    implements _$$DeleteInitiatedCopyWith<$Res> {
  __$$DeleteInitiatedCopyWithImpl(
      _$DeleteInitiated _value, $Res Function(_$DeleteInitiated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteInitiated implements DeleteInitiated {
  const _$DeleteInitiated();

  @override
  String toString() {
    return 'DetailsEvent.deleteInitiated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteInitiated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool? isToggled, String? title,
            String? description, DateTime? dueDate)
        fieldsUpdated,
    required TResult Function() editModeEntered,
    required TResult Function() saveInitiated,
    required TResult Function() deleteInitiated,
  }) {
    return deleteInitiated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult? Function()? editModeEntered,
    TResult? Function()? saveInitiated,
    TResult? Function()? deleteInitiated,
  }) {
    return deleteInitiated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool? isToggled, String? title, String? description,
            DateTime? dueDate)?
        fieldsUpdated,
    TResult Function()? editModeEntered,
    TResult Function()? saveInitiated,
    TResult Function()? deleteInitiated,
    required TResult orElse(),
  }) {
    if (deleteInitiated != null) {
      return deleteInitiated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FieldsUpdated value) fieldsUpdated,
    required TResult Function(EditModeEntered value) editModeEntered,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return deleteInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FieldsUpdated value)? fieldsUpdated,
    TResult? Function(EditModeEntered value)? editModeEntered,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return deleteInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FieldsUpdated value)? fieldsUpdated,
    TResult Function(EditModeEntered value)? editModeEntered,
    TResult Function(SaveInitiated value)? saveInitiated,
    TResult Function(DeleteInitiated value)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (deleteInitiated != null) {
      return deleteInitiated(this);
    }
    return orElse();
  }
}

abstract class DeleteInitiated implements DetailsEvent {
  const factory DeleteInitiated() = _$DeleteInitiated;
}

DetailsState _$DetailsStateFromJson(Map<String, dynamic> json) {
  return _DetailsState.fromJson(json);
}

/// @nodoc
mixin _$DetailsState {
  DetailsMode get mode => throw _privateConstructorUsedError;
  Task? get task => throw _privateConstructorUsedError;
  Status get statusField => throw _privateConstructorUsedError;
  String get titleField => throw _privateConstructorUsedError;
  String get descriptionField => throw _privateConstructorUsedError;
  DateTime? get dueDateField => throw _privateConstructorUsedError;
  MessageStatus get messageStatus => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get shouldPopPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call(
      {DetailsMode mode,
      Task? task,
      Status statusField,
      String titleField,
      String descriptionField,
      DateTime? dueDateField,
      MessageStatus messageStatus,
      String? message,
      bool shouldPopPage});

  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? task = freezed,
    Object? statusField = null,
    Object? titleField = null,
    Object? descriptionField = null,
    Object? dueDateField = freezed,
    Object? messageStatus = null,
    Object? message = freezed,
    Object? shouldPopPage = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DetailsMode,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task?,
      statusField: null == statusField
          ? _value.statusField
          : statusField // ignore: cast_nullable_to_non_nullable
              as Status,
      titleField: null == titleField
          ? _value.titleField
          : titleField // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionField: null == descriptionField
          ? _value.descriptionField
          : descriptionField // ignore: cast_nullable_to_non_nullable
              as String,
      dueDateField: freezed == dueDateField
          ? _value.dueDateField
          : dueDateField // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldPopPage: null == shouldPopPage
          ? _value.shouldPopPage
          : shouldPopPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailsStateCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$_DetailsStateCopyWith(
          _$_DetailsState value, $Res Function(_$_DetailsState) then) =
      __$$_DetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailsMode mode,
      Task? task,
      Status statusField,
      String titleField,
      String descriptionField,
      DateTime? dueDateField,
      MessageStatus messageStatus,
      String? message,
      bool shouldPopPage});

  @override
  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class __$$_DetailsStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$_DetailsState>
    implements _$$_DetailsStateCopyWith<$Res> {
  __$$_DetailsStateCopyWithImpl(
      _$_DetailsState _value, $Res Function(_$_DetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? task = freezed,
    Object? statusField = null,
    Object? titleField = null,
    Object? descriptionField = null,
    Object? dueDateField = freezed,
    Object? messageStatus = null,
    Object? message = freezed,
    Object? shouldPopPage = null,
  }) {
    return _then(_$_DetailsState(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as DetailsMode,
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task?,
      statusField: null == statusField
          ? _value.statusField
          : statusField // ignore: cast_nullable_to_non_nullable
              as Status,
      titleField: null == titleField
          ? _value.titleField
          : titleField // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionField: null == descriptionField
          ? _value.descriptionField
          : descriptionField // ignore: cast_nullable_to_non_nullable
              as String,
      dueDateField: freezed == dueDateField
          ? _value.dueDateField
          : dueDateField // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      shouldPopPage: null == shouldPopPage
          ? _value.shouldPopPage
          : shouldPopPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailsState implements _DetailsState {
  const _$_DetailsState(
      {this.mode = DetailsMode.display,
      this.task = null,
      this.statusField = Status.pending,
      this.titleField = '',
      this.descriptionField = '',
      this.dueDateField = null,
      this.messageStatus = MessageStatus.none,
      this.message = null,
      this.shouldPopPage = false});

  factory _$_DetailsState.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsStateFromJson(json);

  @override
  @JsonKey()
  final DetailsMode mode;
  @override
  @JsonKey()
  final Task? task;
  @override
  @JsonKey()
  final Status statusField;
  @override
  @JsonKey()
  final String titleField;
  @override
  @JsonKey()
  final String descriptionField;
  @override
  @JsonKey()
  final DateTime? dueDateField;
  @override
  @JsonKey()
  final MessageStatus messageStatus;
  @override
  @JsonKey()
  final String? message;
  @override
  @JsonKey()
  final bool shouldPopPage;

  @override
  String toString() {
    return 'DetailsState(mode: $mode, task: $task, statusField: $statusField, titleField: $titleField, descriptionField: $descriptionField, dueDateField: $dueDateField, messageStatus: $messageStatus, message: $message, shouldPopPage: $shouldPopPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsState &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.statusField, statusField) ||
                other.statusField == statusField) &&
            (identical(other.titleField, titleField) ||
                other.titleField == titleField) &&
            (identical(other.descriptionField, descriptionField) ||
                other.descriptionField == descriptionField) &&
            (identical(other.dueDateField, dueDateField) ||
                other.dueDateField == dueDateField) &&
            (identical(other.messageStatus, messageStatus) ||
                other.messageStatus == messageStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.shouldPopPage, shouldPopPage) ||
                other.shouldPopPage == shouldPopPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mode,
      task,
      statusField,
      titleField,
      descriptionField,
      dueDateField,
      messageStatus,
      message,
      shouldPopPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      __$$_DetailsStateCopyWithImpl<_$_DetailsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsStateToJson(
      this,
    );
  }
}

abstract class _DetailsState implements DetailsState {
  const factory _DetailsState(
      {final DetailsMode mode,
      final Task? task,
      final Status statusField,
      final String titleField,
      final String descriptionField,
      final DateTime? dueDateField,
      final MessageStatus messageStatus,
      final String? message,
      final bool shouldPopPage}) = _$_DetailsState;

  factory _DetailsState.fromJson(Map<String, dynamic> json) =
      _$_DetailsState.fromJson;

  @override
  DetailsMode get mode;
  @override
  Task? get task;
  @override
  Status get statusField;
  @override
  String get titleField;
  @override
  String get descriptionField;
  @override
  DateTime? get dueDateField;
  @override
  MessageStatus get messageStatus;
  @override
  String? get message;
  @override
  bool get shouldPopPage;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
