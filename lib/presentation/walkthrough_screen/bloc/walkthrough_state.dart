// ignore_for_file: must_be_immutable

part of 'walkthrough_bloc.dart';

/// Represents the state of Walkthrough in the application.
class WalkthroughState extends Equatable {
  WalkthroughState({this.walkthroughModelObj});

  WalkthroughModel? walkthroughModelObj;

  @override
  List<Object?> get props => [
        walkthroughModelObj,
      ];

  WalkthroughState copyWith({WalkthroughModel? walkthroughModelObj}) {
    return WalkthroughState(
      walkthroughModelObj: walkthroughModelObj ?? this.walkthroughModelObj,
    );
  }
}
