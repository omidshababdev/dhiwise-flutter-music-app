// ignore_for_file: must_be_immutable

part of 'artists_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ArtistsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArtistsTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ArtistsTabContainer widget is first created.
class ArtistsTabContainerInitialEvent extends ArtistsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
