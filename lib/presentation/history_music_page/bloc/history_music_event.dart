// ignore_for_file: must_be_immutable

part of 'history_music_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryMusic widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryMusicEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HistoryMusic widget is first created.
class HistoryMusicInitialEvent extends HistoryMusicEvent {
  @override
  List<Object?> get props => [];
}
