// ignore_for_file: must_be_immutable

part of 'your_likes_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YourLikesTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YourLikesTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the YourLikesTabContainer widget is first created.
class YourLikesTabContainerInitialEvent extends YourLikesTabContainerEvent {
  @override
  List<Object?> get props => [];
}
