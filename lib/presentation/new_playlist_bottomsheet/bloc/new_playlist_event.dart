// ignore_for_file: must_be_immutable

part of 'new_playlist_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NewPlaylist widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NewPlaylistEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the NewPlaylist widget is first created.
class NewPlaylistInitialEvent extends NewPlaylistEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends NewPlaylistEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
