// ignore_for_file: must_be_immutable

part of 'your_likes_tab_container_bloc.dart';

/// Represents the state of YourLikesTabContainer in the application.
class YourLikesTabContainerState extends Equatable {
  YourLikesTabContainerState({this.yourLikesTabContainerModelObj});

  YourLikesTabContainerModel? yourLikesTabContainerModelObj;

  @override
  List<Object?> get props => [
        yourLikesTabContainerModelObj,
      ];

  YourLikesTabContainerState copyWith(
      {YourLikesTabContainerModel? yourLikesTabContainerModelObj}) {
    return YourLikesTabContainerState(
      yourLikesTabContainerModelObj:
          yourLikesTabContainerModelObj ?? this.yourLikesTabContainerModelObj,
    );
  }
}
