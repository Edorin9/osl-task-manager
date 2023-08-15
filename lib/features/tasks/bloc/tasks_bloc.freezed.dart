// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageLoaded,
    required TResult Function(StatusFilter filter) filterChanged,
    required TResult Function(Task task) itemCheckToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageLoaded,
    TResult? Function(StatusFilter filter)? filterChanged,
    TResult? Function(Task task)? itemCheckToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageLoaded,
    TResult Function(StatusFilter filter)? filterChanged,
    TResult Function(Task task)? itemCheckToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageLoaded value) pageLoaded,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(ItemCheckToggled value) itemCheckToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageLoaded value)? pageLoaded,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(ItemCheckToggled value)? itemCheckToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageLoaded value)? pageLoaded,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(ItemCheckToggled value)? itemCheckToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PageLoadedCopyWith<$Res> {
  factory _$$PageLoadedCopyWith(
          _$PageLoaded value, $Res Function(_$PageLoaded) then) =
      __$$PageLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PageLoadedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$PageLoaded>
    implements _$$PageLoadedCopyWith<$Res> {
  __$$PageLoadedCopyWithImpl(
      _$PageLoaded _value, $Res Function(_$PageLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PageLoaded implements PageLoaded {
  const _$PageLoaded();

  @override
  String toString() {
    return 'TasksEvent.pageLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PageLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageLoaded,
    required TResult Function(StatusFilter filter) filterChanged,
    required TResult Function(Task task) itemCheckToggled,
  }) {
    return pageLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageLoaded,
    TResult? Function(StatusFilter filter)? filterChanged,
    TResult? Function(Task task)? itemCheckToggled,
  }) {
    return pageLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageLoaded,
    TResult Function(StatusFilter filter)? filterChanged,
    TResult Function(Task task)? itemCheckToggled,
    required TResult orElse(),
  }) {
    if (pageLoaded != null) {
      return pageLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageLoaded value) pageLoaded,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(ItemCheckToggled value) itemCheckToggled,
  }) {
    return pageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageLoaded value)? pageLoaded,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(ItemCheckToggled value)? itemCheckToggled,
  }) {
    return pageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageLoaded value)? pageLoaded,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(ItemCheckToggled value)? itemCheckToggled,
    required TResult orElse(),
  }) {
    if (pageLoaded != null) {
      return pageLoaded(this);
    }
    return orElse();
  }
}

abstract class PageLoaded implements TasksEvent {
  const factory PageLoaded() = _$PageLoaded;
}

/// @nodoc
abstract class _$$FilterChangedCopyWith<$Res> {
  factory _$$FilterChangedCopyWith(
          _$FilterChanged value, $Res Function(_$FilterChanged) then) =
      __$$FilterChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({StatusFilter filter});
}

/// @nodoc
class __$$FilterChangedCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$FilterChanged>
    implements _$$FilterChangedCopyWith<$Res> {
  __$$FilterChangedCopyWithImpl(
      _$FilterChanged _value, $Res Function(_$FilterChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$FilterChanged(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as StatusFilter,
    ));
  }
}

/// @nodoc

class _$FilterChanged implements FilterChanged {
  const _$FilterChanged(this.filter);

  @override
  final StatusFilter filter;

  @override
  String toString() {
    return 'TasksEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterChanged &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterChangedCopyWith<_$FilterChanged> get copyWith =>
      __$$FilterChangedCopyWithImpl<_$FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageLoaded,
    required TResult Function(StatusFilter filter) filterChanged,
    required TResult Function(Task task) itemCheckToggled,
  }) {
    return filterChanged(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageLoaded,
    TResult? Function(StatusFilter filter)? filterChanged,
    TResult? Function(Task task)? itemCheckToggled,
  }) {
    return filterChanged?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageLoaded,
    TResult Function(StatusFilter filter)? filterChanged,
    TResult Function(Task task)? itemCheckToggled,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageLoaded value) pageLoaded,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(ItemCheckToggled value) itemCheckToggled,
  }) {
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageLoaded value)? pageLoaded,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(ItemCheckToggled value)? itemCheckToggled,
  }) {
    return filterChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageLoaded value)? pageLoaded,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(ItemCheckToggled value)? itemCheckToggled,
    required TResult orElse(),
  }) {
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class FilterChanged implements TasksEvent {
  const factory FilterChanged(final StatusFilter filter) = _$FilterChanged;

  StatusFilter get filter;
  @JsonKey(ignore: true)
  _$$FilterChangedCopyWith<_$FilterChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCheckToggledCopyWith<$Res> {
  factory _$$ItemCheckToggledCopyWith(
          _$ItemCheckToggled value, $Res Function(_$ItemCheckToggled) then) =
      __$$ItemCheckToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$ItemCheckToggledCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ItemCheckToggled>
    implements _$$ItemCheckToggledCopyWith<$Res> {
  __$$ItemCheckToggledCopyWithImpl(
      _$ItemCheckToggled _value, $Res Function(_$ItemCheckToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$ItemCheckToggled(
      task: null == task
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

class _$ItemCheckToggled implements ItemCheckToggled {
  const _$ItemCheckToggled({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.itemCheckToggled(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemCheckToggled &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemCheckToggledCopyWith<_$ItemCheckToggled> get copyWith =>
      __$$ItemCheckToggledCopyWithImpl<_$ItemCheckToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pageLoaded,
    required TResult Function(StatusFilter filter) filterChanged,
    required TResult Function(Task task) itemCheckToggled,
  }) {
    return itemCheckToggled(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pageLoaded,
    TResult? Function(StatusFilter filter)? filterChanged,
    TResult? Function(Task task)? itemCheckToggled,
  }) {
    return itemCheckToggled?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pageLoaded,
    TResult Function(StatusFilter filter)? filterChanged,
    TResult Function(Task task)? itemCheckToggled,
    required TResult orElse(),
  }) {
    if (itemCheckToggled != null) {
      return itemCheckToggled(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageLoaded value) pageLoaded,
    required TResult Function(FilterChanged value) filterChanged,
    required TResult Function(ItemCheckToggled value) itemCheckToggled,
  }) {
    return itemCheckToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageLoaded value)? pageLoaded,
    TResult? Function(FilterChanged value)? filterChanged,
    TResult? Function(ItemCheckToggled value)? itemCheckToggled,
  }) {
    return itemCheckToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageLoaded value)? pageLoaded,
    TResult Function(FilterChanged value)? filterChanged,
    TResult Function(ItemCheckToggled value)? itemCheckToggled,
    required TResult orElse(),
  }) {
    if (itemCheckToggled != null) {
      return itemCheckToggled(this);
    }
    return orElse();
  }
}

abstract class ItemCheckToggled implements TasksEvent {
  const factory ItemCheckToggled({required final Task task}) =
      _$ItemCheckToggled;

  Task get task;
  @JsonKey(ignore: true)
  _$$ItemCheckToggledCopyWith<_$ItemCheckToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksState _$TasksStateFromJson(Map<String, dynamic> json) {
  return _TasksState.fromJson(json);
}

/// @nodoc
mixin _$TasksState {
  List<Task> get tasks => throw _privateConstructorUsedError;
  StatusFilter get statusFilter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call({List<Task> tasks, StatusFilter statusFilter});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? statusFilter = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      statusFilter: null == statusFilter
          ? _value.statusFilter
          : statusFilter // ignore: cast_nullable_to_non_nullable
              as StatusFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TasksStateCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$_TasksStateCopyWith(
          _$_TasksState value, $Res Function(_$_TasksState) then) =
      __$$_TasksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task> tasks, StatusFilter statusFilter});
}

/// @nodoc
class __$$_TasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$_TasksState>
    implements _$$_TasksStateCopyWith<$Res> {
  __$$_TasksStateCopyWithImpl(
      _$_TasksState _value, $Res Function(_$_TasksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? statusFilter = null,
  }) {
    return _then(_$_TasksState(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
      statusFilter: null == statusFilter
          ? _value.statusFilter
          : statusFilter // ignore: cast_nullable_to_non_nullable
              as StatusFilter,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TasksState implements _TasksState {
  const _$_TasksState(
      {final List<Task> tasks = const [], this.statusFilter = StatusFilter.all})
      : _tasks = tasks;

  factory _$_TasksState.fromJson(Map<String, dynamic> json) =>
      _$$_TasksStateFromJson(json);

  final List<Task> _tasks;
  @override
  @JsonKey()
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final StatusFilter statusFilter;

  @override
  String toString() {
    return 'TasksState(tasks: $tasks, statusFilter: $statusFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksState &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.statusFilter, statusFilter) ||
                other.statusFilter == statusFilter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tasks), statusFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TasksStateCopyWith<_$_TasksState> get copyWith =>
      __$$_TasksStateCopyWithImpl<_$_TasksState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksStateToJson(
      this,
    );
  }
}

abstract class _TasksState implements TasksState {
  const factory _TasksState(
      {final List<Task> tasks,
      final StatusFilter statusFilter}) = _$_TasksState;

  factory _TasksState.fromJson(Map<String, dynamic> json) =
      _$_TasksState.fromJson;

  @override
  List<Task> get tasks;
  @override
  StatusFilter get statusFilter;
  @override
  @JsonKey(ignore: true)
  _$$_TasksStateCopyWith<_$_TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
