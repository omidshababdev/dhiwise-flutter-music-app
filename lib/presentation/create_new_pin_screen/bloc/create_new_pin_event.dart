// ignore_for_file: must_be_immutable

part of 'create_new_pin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPinEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CreateNewPin widget is first created.
class CreateNewPinInitialEvent extends CreateNewPinEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends CreateNewPinEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
