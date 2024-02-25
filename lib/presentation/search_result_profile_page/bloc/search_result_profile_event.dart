// ignore_for_file: must_be_immutable

part of 'search_result_profile_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultProfile widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultProfileEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultProfile widget is first created.
class SearchResultProfileInitialEvent extends SearchResultProfileEvent {
  @override
  List<Object?> get props => [];
}
