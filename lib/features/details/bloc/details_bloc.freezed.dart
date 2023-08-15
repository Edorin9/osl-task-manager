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
    required TResult Function() editToggled,
    required TResult Function(Task task) saveInitiated,
    required TResult Function(Task task) deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editToggled,
    TResult? Function(Task task)? saveInitiated,
    TResult? Function(Task task)? deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editToggled,
    TResult Function(Task task)? saveInitiated,
    TResult Function(Task task)? deleteInitiated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditToggled value) editToggled,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditToggled value)? editToggled,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditToggled value)? editToggled,
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
abstract class _$$EditToggledCopyWith<$Res> {
  factory _$$EditToggledCopyWith(
          _$EditToggled value, $Res Function(_$EditToggled) then) =
      __$$EditToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditToggledCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$EditToggled>
    implements _$$EditToggledCopyWith<$Res> {
  __$$EditToggledCopyWithImpl(
      _$EditToggled _value, $Res Function(_$EditToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditToggled implements EditToggled {
  const _$EditToggled();

  @override
  String toString() {
    return 'DetailsEvent.editToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editToggled,
    required TResult Function(Task task) saveInitiated,
    required TResult Function(Task task) deleteInitiated,
  }) {
    return editToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editToggled,
    TResult? Function(Task task)? saveInitiated,
    TResult? Function(Task task)? deleteInitiated,
  }) {
    return editToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editToggled,
    TResult Function(Task task)? saveInitiated,
    TResult Function(Task task)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (editToggled != null) {
      return editToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditToggled value) editToggled,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return editToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditToggled value)? editToggled,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return editToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditToggled value)? editToggled,
    TResult Function(SaveInitiated value)? saveInitiated,
    TResult Function(DeleteInitiated value)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (editToggled != null) {
      return editToggled(this);
    }
    return orElse();
  }
}

abstract class EditToggled implements DetailsEvent {
  const factory EditToggled() = _$EditToggled;
}

/// @nodoc
abstract class _$$SaveInitiatedCopyWith<$Res> {
  factory _$$SaveInitiatedCopyWith(
          _$SaveInitiated value, $Res Function(_$SaveInitiated) then) =
      __$$SaveInitiatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$SaveInitiatedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$SaveInitiated>
    implements _$$SaveInitiatedCopyWith<$Res> {
  __$$SaveInitiatedCopyWithImpl(
      _$SaveInitiated _value, $Res Function(_$SaveInitiated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SaveInitiated(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$SaveInitiated implements SaveInitiated {
  const _$SaveInitiated(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DetailsEvent.saveInitiated(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveInitiated &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveInitiatedCopyWith<_$SaveInitiated> get copyWith =>
      __$$SaveInitiatedCopyWithImpl<_$SaveInitiated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editToggled,
    required TResult Function(Task task) saveInitiated,
    required TResult Function(Task task) deleteInitiated,
  }) {
    return saveInitiated(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editToggled,
    TResult? Function(Task task)? saveInitiated,
    TResult? Function(Task task)? deleteInitiated,
  }) {
    return saveInitiated?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editToggled,
    TResult Function(Task task)? saveInitiated,
    TResult Function(Task task)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (saveInitiated != null) {
      return saveInitiated(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditToggled value) editToggled,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return saveInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditToggled value)? editToggled,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return saveInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditToggled value)? editToggled,
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
  const factory SaveInitiated(final Task task) = _$SaveInitiated;

  Task get task;
  @JsonKey(ignore: true)
  _$$SaveInitiatedCopyWith<_$SaveInitiated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteInitiatedCopyWith<$Res> {
  factory _$$DeleteInitiatedCopyWith(
          _$DeleteInitiated value, $Res Function(_$DeleteInitiated) then) =
      __$$DeleteInitiatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$DeleteInitiatedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$DeleteInitiated>
    implements _$$DeleteInitiatedCopyWith<$Res> {
  __$$DeleteInitiatedCopyWithImpl(
      _$DeleteInitiated _value, $Res Function(_$DeleteInitiated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$DeleteInitiated(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$DeleteInitiated implements DeleteInitiated {
  const _$DeleteInitiated(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'DetailsEvent.deleteInitiated(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteInitiated &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteInitiatedCopyWith<_$DeleteInitiated> get copyWith =>
      __$$DeleteInitiatedCopyWithImpl<_$DeleteInitiated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() editToggled,
    required TResult Function(Task task) saveInitiated,
    required TResult Function(Task task) deleteInitiated,
  }) {
    return deleteInitiated(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? editToggled,
    TResult? Function(Task task)? saveInitiated,
    TResult? Function(Task task)? deleteInitiated,
  }) {
    return deleteInitiated?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? editToggled,
    TResult Function(Task task)? saveInitiated,
    TResult Function(Task task)? deleteInitiated,
    required TResult orElse(),
  }) {
    if (deleteInitiated != null) {
      return deleteInitiated(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditToggled value) editToggled,
    required TResult Function(SaveInitiated value) saveInitiated,
    required TResult Function(DeleteInitiated value) deleteInitiated,
  }) {
    return deleteInitiated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditToggled value)? editToggled,
    TResult? Function(SaveInitiated value)? saveInitiated,
    TResult? Function(DeleteInitiated value)? deleteInitiated,
  }) {
    return deleteInitiated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditToggled value)? editToggled,
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
  const factory DeleteInitiated(final Task task) = _$DeleteInitiated;

  Task get task;
  @JsonKey(ignore: true)
  _$$DeleteInitiatedCopyWith<_$DeleteInitiated> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailsState _$DetailsStateFromJson(Map<String, dynamic> json) {
  return _DetailsState.fromJson(json);
}

/// @nodoc
mixin _$DetailsState {
  DetailsMode get mode => throw _privateConstructorUsedError;
  Task? get task => throw _privateConstructorUsedError;
  MessageStatus get messageStatus => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

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
      MessageStatus messageStatus,
      String? message});

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
    Object? messageStatus = null,
    Object? message = freezed,
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
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
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
      MessageStatus messageStatus,
      String? message});

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
    Object? messageStatus = null,
    Object? message = freezed,
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
      messageStatus: null == messageStatus
          ? _value.messageStatus
          : messageStatus // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailsState implements _DetailsState {
  const _$_DetailsState(
      {this.mode = DetailsMode.display,
      this.task = null,
      this.messageStatus = MessageStatus.none,
      this.message = null});

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
  final MessageStatus messageStatus;
  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'DetailsState(mode: $mode, task: $task, messageStatus: $messageStatus, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsState &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.messageStatus, messageStatus) ||
                other.messageStatus == messageStatus) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mode, task, messageStatus, message);

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
      final MessageStatus messageStatus,
      final String? message}) = _$_DetailsState;

  factory _DetailsState.fromJson(Map<String, dynamic> json) =
      _$_DetailsState.fromJson;

  @override
  DetailsMode get mode;
  @override
  Task? get task;
  @override
  MessageStatus get messageStatus;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
