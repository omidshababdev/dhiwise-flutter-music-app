// ignore_for_file: must_be_immutable

part of 'set_fingerprint_bloc.dart';

/// Represents the state of SetFingerprint in the application.
class SetFingerprintState extends Equatable {
  SetFingerprintState({this.setFingerprintModelObj});

  SetFingerprintModel? setFingerprintModelObj;

  @override
  List<Object?> get props => [
        setFingerprintModelObj,
      ];

  SetFingerprintState copyWith({SetFingerprintModel? setFingerprintModelObj}) {
    return SetFingerprintState(
      setFingerprintModelObj:
          setFingerprintModelObj ?? this.setFingerprintModelObj,
    );
  }
}
