part of 'simaler_books_cubit.dart';

@immutable
abstract class StateSimalerBooksState {}

class StateSimalerBooksInitial extends StateSimalerBooksState {}
class StateSimalerBooksLoading extends StateSimalerBooksState {}
class StateSimalerBooksSuccess extends StateSimalerBooksState {}
class StateSimalerBooksFailure extends StateSimalerBooksState {
  String? error;
  StateSimalerBooksFailure({required this.error});
}
