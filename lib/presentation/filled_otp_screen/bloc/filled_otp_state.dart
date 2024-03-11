// ignore_for_file: must_be_immutable

part of 'filled_otp_bloc.dart';

/// Represents the state of FilledOtp in the application.
class FilledOtpState extends Equatable {
  FilledOtpState({
    this.otpController,
    this.filledOtpModelObj,
  });

  TextEditingController? otpController;

  FilledOtpModel? filledOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        filledOtpModelObj,
      ];

  FilledOtpState copyWith({
    TextEditingController? otpController,
    FilledOtpModel? filledOtpModelObj,
  }) {
    return FilledOtpState(
      otpController: otpController ?? this.otpController,
      filledOtpModelObj: filledOtpModelObj ?? this.filledOtpModelObj,
    );
  }
}
