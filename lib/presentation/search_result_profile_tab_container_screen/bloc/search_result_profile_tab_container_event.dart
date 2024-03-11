// ignore_for_file: must_be_immutable

part of 'search_result_profile_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchResultProfileTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchResultProfileTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SearchResultProfileTabContainer widget is first created.
class SearchResultProfileTabContainerInitialEvent
    extends SearchResultProfileTabContainerEvent {
  @override
  List<Object?> get props => [];
}
