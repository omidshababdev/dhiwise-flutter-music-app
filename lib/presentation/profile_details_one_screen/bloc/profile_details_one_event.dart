// ignore_for_file: must_be_immutable

part of 'profile_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileDetailsOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ProfileDetailsOne widget is first created.
class ProfileDetailsOneInitialEvent extends ProfileDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
