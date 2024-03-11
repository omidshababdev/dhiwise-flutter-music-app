// ignore_for_file: must_be_immutable

part of 'downloaded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Downloaded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DownloadedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Downloaded widget is first created.
class DownloadedInitialEvent extends DownloadedEvent {
  @override
  List<Object?> get props => [];
}
