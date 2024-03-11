// ignore_for_file: must_be_immutable

part of 'your_likes_bloc.dart';

/// Represents the state of YourLikes in the application.
class YourLikesState extends Equatable {
  YourLikesState({this.yourLikesModelObj});

  YourLikesModel? yourLikesModelObj;

  @override
  List<Object?> get props => [
        yourLikesModelObj,
      ];

  YourLikesState copyWith({YourLikesModel? yourLikesModelObj}) {
    return YourLikesState(
      yourLikesModelObj: yourLikesModelObj ?? this.yourLikesModelObj,
    );
  }
}
