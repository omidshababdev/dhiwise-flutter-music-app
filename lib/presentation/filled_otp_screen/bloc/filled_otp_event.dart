// ignore_for_file: must_be_immutable

part of 'filled_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilledOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilledOtpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the FilledOtp widget is first created.
class FilledOtpInitialEvent extends FilledOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends FilledOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
