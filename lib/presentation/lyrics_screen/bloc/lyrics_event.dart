// ignore_for_file: must_be_immutable

part of 'lyrics_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Lyrics widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LyricsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Lyrics widget is first created.
class LyricsInitialEvent extends LyricsEvent {
  @override
  List<Object?> get props => [];
}
