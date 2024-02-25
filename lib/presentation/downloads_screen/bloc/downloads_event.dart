// ignore_for_file: must_be_immutable

part of 'downloads_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Downloads widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DownloadsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Downloads widget is first created.
class DownloadsInitialEvent extends DownloadsEvent {
  @override
  List<Object?> get props => [];
}
