// ignore_for_file: must_be_immutable

part of 'my_library_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyLibrary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyLibraryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyLibrary widget is first created.
class MyLibraryInitialEvent extends MyLibraryEvent {
  @override
  List<Object?> get props => [];
}
