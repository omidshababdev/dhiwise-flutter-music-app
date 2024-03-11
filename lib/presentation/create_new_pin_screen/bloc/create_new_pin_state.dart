// ignore_for_file: must_be_immutable

part of 'create_new_pin_bloc.dart';

/// Represents the state of CreateNewPin in the application.
class CreateNewPinState extends Equatable {
  CreateNewPinState({
    this.otpController,
    this.createNewPinModelObj,
  });

  TextEditingController? otpController;

  CreateNewPinModel? createNewPinModelObj;

  @override
  List<Object?> get props => [
        otpController,
        createNewPinModelObj,
      ];

  CreateNewPinState copyWith({
    TextEditingController? otpController,
    CreateNewPinModel? createNewPinModelObj,
  }) {
    return CreateNewPinState(
      otpController: otpController ?? this.otpController,
      createNewPinModelObj: createNewPinModelObj ?? this.createNewPinModelObj,
    );
  }
}
