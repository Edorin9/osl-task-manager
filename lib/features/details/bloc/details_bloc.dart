import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repository/repository.dart';

import '../../tasks/models/task.dart';
import '../enums/details_mode.dart';
import '../enums/message_status.dart';

part 'details_event.dart';
part 'details_state.dart';

part 'details_bloc.freezed.dart';
part 'details_bloc.g.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(this._repository, DetailsMode? mode, Task? task)
      : super(
          DetailsState(
            mode: mode ?? DetailsMode.display,
            task: task,
          ),
        ) {
    on<FieldsUpdated>(_onFieldsUpdated);
    on<EditModeEntered>(_onEditModeEntered);
    on<SaveInitiated>(_onSaveInitiated);
    on<DeleteInitiated>(_onDeleteInitiated);
  }

  final Repository _repository;

  Future<void> _onFieldsUpdated(
    FieldsUpdated event,
    Emitter<DetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        titleField: event.title ?? state.titleField,
        descriptionField: event.description ?? state.descriptionField,
        dueDateField: event.dueDate ?? DateTime.now(),
      ),
    );
  }

  Future<void> _onEditModeEntered(
    EditModeEntered event,
    Emitter<DetailsState> emit,
  ) async {
    // TODO
    emit(
      state.copyWith(
        mode: DetailsMode.edit,
        titleField: state.task?.title ?? state.titleField,
        descriptionField: state.task?.description ?? state.descriptionField,
        dueDateField: state.task?.dueDate ?? DateTime.now(),
      ),
    );
  }

  Future<void> _onSaveInitiated(
    SaveInitiated event,
    Emitter<DetailsState> emit,
  ) async {
    if (state.titleField.isEmpty || state.descriptionField.isEmpty) {
      emit(
        state.copyWith(
          messageStatus: MessageStatus.failure,
          message: 'All fields are required.',
        ),
      );
      return;
    }
    try {
      final task = Task(
        id: state.task?.id,
        title: state.titleField,
        description: state.descriptionField,
        status: state.task?.status ?? Status.pending,
        dateCreated: DateTime.now(),
        dueDate: state.dueDateField ?? DateTime.now(),
      );
      final id = await _repository.addOrEditTask(task.toTaskModel());
      debugPrint('id: $id');
      emit(
        state.copyWith(
          messageStatus: MessageStatus.success,
          message: 'Task saved successfully',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          messageStatus: MessageStatus.failure,
          message: 'Task save failed',
        ),
      );
    }
  }

  Future<void> _onDeleteInitiated(
    DeleteInitiated event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      await _repository.deleteTask(state.task!.toTaskModel());
      emit(
        state.copyWith(
          messageStatus: MessageStatus.success,
          message: 'Task successfully deleted',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          messageStatus: MessageStatus.failure,
          message: 'Task delete failed',
        ),
      );
    }
  }
}
