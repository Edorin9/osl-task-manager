enum Status {
  pending,
  completed,
}

extension StatusX on Status {
  int get id {
    switch (this) {
      case Status.pending:
        return 0;
      case Status.completed:
        return 1;
    }
  }
}

extension IntStatusX on int {
  Status get statusType => this == 0 ? Status.pending : Status.completed;
}
