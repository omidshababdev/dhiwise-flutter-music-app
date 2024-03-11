// ignore_for_file: must_be_immutable

part of 'popular_artists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PopularArtists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PopularArtistsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PopularArtists widget is first created.
class PopularArtistsInitialEvent extends PopularArtistsEvent {
  @override
  List<Object?> get props => [];
}
