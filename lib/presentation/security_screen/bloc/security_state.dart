// ignore_for_file: must_be_immutable

part of 'security_bloc.dart';

/// Represents the state of Security in the application.
class SecurityState extends Equatable {
  SecurityState({
    this.passwordController,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.securityModelObj,
  });

  TextEditingController? passwordController;

  SecurityModel? securityModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        passwordController,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        securityModelObj,
      ];

  SecurityState copyWith({
    TextEditingController? passwordController,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    SecurityModel? securityModelObj,
  }) {
    return SecurityState(
      passwordController: passwordController ?? this.passwordController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      securityModelObj: securityModelObj ?? this.securityModelObj,
    );
  }
}
