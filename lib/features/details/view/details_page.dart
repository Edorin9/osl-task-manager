import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:repository/repository.dart';

import '../../../util/extensions.dart';
import '../../tasks/models/task.dart';
import '../bloc/details_bloc.dart';
import '../enums/details_mode.dart';
import '../enums/message_status.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  static const String name = '/details';
  static WidgetBuilder route() => (context) => const DetailsPage();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as DetailsArgs?;
    return BlocProvider(
      create: (context) => DetailsBloc(
        context.read<Repository>(),
        args?.mode,
        args?.task,
      ),
      child: const _TasksView(),
    );
  }
}

class _TasksView extends StatelessWidget {
  const _TasksView();

  @override
  Widget build(BuildContext context) {
    // view layout
    return MultiBlocListener(
      listeners: [
        BlocListener<DetailsBloc, DetailsState>(
          listenWhen: (prev, curr) =>
              prev.messageStatus != curr.messageStatus &&
              curr.messageStatus != MessageStatus.none,
          listener: (context, state) {
            final snackBar = SnackBar(
              content: Text(state.message ?? ''),
              backgroundColor: state.messageStatus.color,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        ),
        BlocListener<DetailsBloc, DetailsState>(
          listenWhen: (prev, curr) => curr.shouldPopPage == true,
          listener: (context, state) => Navigator.pop(context),
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BlocBuilder<DetailsBloc, DetailsState>(
                    buildWhen: (prev, curr) => prev.mode != curr.mode,
                    builder: (context, state) {
                      return IconButton(
                        icon: Icon(
                          state.mode == DetailsMode.create
                              ? Icons.close
                              : Icons.arrow_back,
                        ),
                        onPressed: () => Navigator.pop(context),
                        iconSize: 24,
                      );
                    },
                  ),
                  BlocBuilder<DetailsBloc, DetailsState>(
                    buildWhen: (prev, curr) => prev.mode != curr.mode,
                    builder: (context, state) {
                      return Text(
                        state.mode == DetailsMode.create
                            ? 'Create'
                            : state.mode == DetailsMode.edit
                                ? 'Edit'
                                : '',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          color: Color(0xff000000),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  BlocBuilder<DetailsBloc, DetailsState>(
                    buildWhen: (prev, curr) => prev.mode != curr.mode,
                    builder: (context, state) {
                      return state.mode == DetailsMode.display
                          ? IconButton(
                              onPressed: () => context
                                  .read<DetailsBloc>()
                                  .add(const DeleteInitiated()),
                              icon: const Icon(Icons.delete),
                              iconSize: 24,
                            )
                          : const SizedBox();
                    },
                  ),
                  BlocBuilder<DetailsBloc, DetailsState>(
                    buildWhen: (prev, curr) => prev.mode != curr.mode,
                    builder: (context, state) {
                      return state.mode == DetailsMode.display
                          ? IconButton(
                              onPressed: () => context.read<DetailsBloc>().add(
                                    const EditModeEntered(),
                                  ),
                              icon: const Icon(Icons.edit),
                              iconSize: 24,
                            )
                          : const SizedBox();
                    },
                  ),
                  BlocBuilder<DetailsBloc, DetailsState>(
                    buildWhen: (prev, curr) => prev.mode != curr.mode,
                    builder: (context, state) {
                      return state.mode == DetailsMode.create ||
                              state.mode == DetailsMode.edit
                          ? IconButton(
                              onPressed: () => context.read<DetailsBloc>().add(
                                    const SaveInitiated(),
                                  ),
                              icon: const Icon(Icons.save),
                              iconSize: 24,
                            )
                          : const SizedBox();
                    },
                  ),
                ],
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _TitleField(),
                          _StatusToggle(),
                        ],
                      ),
                      _TitleLabel(),
                      _DateCreatedLabel(),
                      _DescriptionLabelField(),
                      _DueDateLabel(),
                      _DueDatePicker(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _StatusToggle extends StatelessWidget {
  const _StatusToggle();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      buildWhen: (prev, curr) => prev.mode != curr.mode,
      builder: (context, state) {
        return state.mode == DetailsMode.edit
            ? IconButton(
                onPressed: () => context.read<DetailsBloc>().add(
                      const FieldsUpdated(
                        isToggled: true,
                      ),
                    ),
                padding: const EdgeInsets.only(
                  right: 16,
                  top: 8,
                ),
                splashRadius: 1,
                icon: BlocBuilder<DetailsBloc, DetailsState>(
                  buildWhen: (prev, curr) =>
                      prev.statusField != curr.statusField,
                  builder: (context, state) {
                    return Icon(
                      state.statusField == Status.completed
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: Colors.black,
                    );
                  },
                ),
                iconSize: 40,
              )
            : const SizedBox();
      },
    );
  }
}

class _TitleField extends HookWidget {
  const _TitleField();

  @override
  Widget build(BuildContext context) {
    final titleController = useTextEditingController(text: '');

    return Flexible(
      child: BlocBuilder<DetailsBloc, DetailsState>(
        buildWhen: (prev, curr) => prev.mode != curr.mode,
        builder: (context, state) {
          titleController.text =
              state.mode == DetailsMode.edit ? state.task?.title ?? '' : '';
          return state.mode == DetailsMode.create ||
                  state.mode == DetailsMode.edit
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  child: TextField(
                    onChanged: (text) => context.read<DetailsBloc>().add(
                          FieldsUpdated(title: text),
                        ),
                    controller: titleController,
                    cursorColor: Colors.black,
                    maxLines: null,
                    style: const TextStyle(
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff000000),
                    ),
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(),
                      hintText: 'Title',
                    ),
                  ),
                )
              : const SizedBox();
        },
      ),
    );
  }
}

class _TitleLabel extends StatelessWidget {
  const _TitleLabel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      buildWhen: (prev, curr) => prev.mode != curr.mode,
      builder: (context, state) {
        return state.mode == DetailsMode.display
            ? Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Hero(
                  tag: 'title ${state.task?.id}',
                  child: Text(
                    state.task?.title ?? '',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      height: 1.3,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}

class _DateCreatedLabel extends StatelessWidget {
  const _DateCreatedLabel();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      buildWhen: (prev, curr) => prev.mode != curr.mode,
      builder: (context, state) {
        return state.mode == DetailsMode.display
            ? Padding(
                padding: const EdgeInsets.fromLTRB(16, 4, 0, 8),
                child: Text(
                  state.task?.dateCreated.displayFormat ?? '???',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                    color: Color(0xff000000),
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}

class _DescriptionLabelField extends HookWidget {
  const _DescriptionLabelField();

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController(text: '');

    return BlocBuilder<DetailsBloc, DetailsState>(
      buildWhen: (prev, curr) => prev.mode != curr.mode,
      builder: (context, state) {
        descriptionController.text = state.task?.description ?? '';
        return TextField(
          onChanged: (text) => context.read<DetailsBloc>().add(
                FieldsUpdated(description: text),
              ),
          controller: descriptionController,
          enabled: state.mode != DetailsMode.display,
          maxLines: 7,
          cursorColor: Colors.black,
          style: const TextStyle(
            height: 1.3,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
          ),
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: state.mode == DetailsMode.display ? '' : 'description',
            isDense: false,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
          ),
        );
      },
    );
  }
}

class _DueDateLabel extends StatelessWidget {
  const _DueDateLabel();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Align(
        child: Text(
          'Due date',
          textAlign: TextAlign.start,
          overflow: TextOverflow.clip,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            fontSize: 16,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}

class _DueDatePicker extends StatelessWidget {
  const _DueDatePicker();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsBloc, DetailsState>(
      buildWhen: (prev, curr) =>
          prev.task != curr.task || prev.mode != curr.mode,
      builder: (context, state) {
        return CalendarDatePicker(
          onDateChanged: (date) => context.read<DetailsBloc>().add(
                FieldsUpdated(dueDate: date),
              ),
          initialDate: state.mode == DetailsMode.display ||
                  state.mode == DetailsMode.edit
              ? state.task?.dueDate ?? DateTime.now()
              : DateTime.now(),
          firstDate: state.mode == DetailsMode.display
              ? state.task?.dueDate ?? DateTime.now()
              : DateTime.now(),
          lastDate: state.mode == DetailsMode.display
              ? state.task?.dueDate ?? DateTime.now()
              : DateTime.now().add(const Duration(days: 364635)),
        );
      },
    );
  }
}

class DetailsArgs {
  DetailsArgs({
    required this.mode,
    this.task,
  });

  final DetailsMode mode;
  final Task? task;
}
