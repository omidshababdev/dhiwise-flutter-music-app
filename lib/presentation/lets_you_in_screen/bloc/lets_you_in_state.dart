// ignore_for_file: must_be_immutable

part of 'lets_you_in_bloc.dart';

/// Represents the state of LetsYouIn in the application.
class LetsYouInState extends Equatable {
  LetsYouInState({this.letsYouInModelObj});

  LetsYouInModel? letsYouInModelObj;

  @override
  List<Object?> get props => [
        letsYouInModelObj,
      ];

  LetsYouInState copyWith({LetsYouInModel? letsYouInModelObj}) {
    return LetsYouInState(
      letsYouInModelObj: letsYouInModelObj ?? this.letsYouInModelObj,
    );
  }
}
