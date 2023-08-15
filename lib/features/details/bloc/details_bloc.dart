import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repository/repository.dart';

import '../../tasks/models/task.dart';
import '../enums/details_mode.dart';
import '../enums/message_status.dart';

part 'details_event.dart';
part 'details_state.dart';
part 'details_bloc.freezed.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsBloc(this._repository, Task task) : super(DetailsState(task: task)) {
    on<SaveInitiated>(_onSaveInitiated);
    on<DeleteInitiated>(_onDeleteInitiated);
  }

  final Repository _repository;

  Future<void> _onSaveInitiated(
    SaveInitiated event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      await _repository.addOrEditTask(event.task.toTaskModel());
      emit(
        state.copyWith(
          messageStatus: MessageStatus.success,
          message: 'Task saved successfully',
        ),
      );
      print('show success');
    } catch (e) {
      emit(
        state.copyWith(
          messageStatus: MessageStatus.failure,
          message: 'Task save failed',
        ),
      );
      print('show failure');
    }
  }

  Future<void> _onDeleteInitiated(
    DeleteInitiated event,
    Emitter<DetailsState> emit,
  ) async {
    try {
      await _repository.deleteTask(event.task.toTaskModel());
      emit(
        state.copyWith(
          messageStatus: MessageStatus.success,
          message: 'Task successfully deleted',
        ),
      );
      print('show success');
    } catch (e) {
      emit(
        state.copyWith(
          messageStatus: MessageStatus.failure,
          message: 'Task delete failed',
        ),
      );
      print('show failure');
    }
  }
}
