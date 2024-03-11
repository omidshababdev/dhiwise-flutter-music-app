// ignore_for_file: must_be_immutable

part of 'your_likes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///YourLikes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YourLikesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the YourLikes widget is first created.
class YourLikesInitialEvent extends YourLikesEvent {
  @override
  List<Object?> get props => [];
}
