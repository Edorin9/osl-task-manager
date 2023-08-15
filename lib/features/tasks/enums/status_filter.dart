enum StatusFilter {
  all,
  pending,
  completed,
}

extension StatusFilterX on StatusFilter {
  int? get id {
    switch (this) {
      case StatusFilter.all:
        return null;
      case StatusFilter.pending:
        return 0;
      case StatusFilter.completed:
        return 1;
    }
  }
}
