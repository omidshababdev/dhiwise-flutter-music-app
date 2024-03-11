// ignore_for_file: must_be_immutable

part of 'subscribe_bloc.dart';

/// Represents the state of Subscribe in the application.
class SubscribeState extends Equatable {
  SubscribeState({this.subscribeModelObj});

  SubscribeModel? subscribeModelObj;

  @override
  List<Object?> get props => [
        subscribeModelObj,
      ];

  SubscribeState copyWith({SubscribeModel? subscribeModelObj}) {
    return SubscribeState(
      subscribeModelObj: subscribeModelObj ?? this.subscribeModelObj,
    );
  }
}
