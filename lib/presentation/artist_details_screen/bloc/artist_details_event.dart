// ignore_for_file: must_be_immutable

part of 'artist_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ArtistDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ArtistDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ArtistDetails widget is first created.
class ArtistDetailsInitialEvent extends ArtistDetailsEvent {
  @override
  List<Object?> get props => [];
}
