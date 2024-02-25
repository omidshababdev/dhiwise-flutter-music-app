// ignore_for_file: must_be_immutable

part of 'profile_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ProfileDetails widget is first created.
class ProfileDetailsInitialEvent extends ProfileDetailsEvent {
  @override
  List<Object?> get props => [];
}
