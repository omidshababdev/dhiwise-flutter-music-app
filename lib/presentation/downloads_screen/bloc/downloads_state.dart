// ignore_for_file: must_be_immutable

part of 'downloads_bloc.dart';

/// Represents the state of Downloads in the application.
class DownloadsState extends Equatable {
  DownloadsState({this.downloadsModelObj});

  DownloadsModel? downloadsModelObj;

  @override
  List<Object?> get props => [
        downloadsModelObj,
      ];

  DownloadsState copyWith({DownloadsModel? downloadsModelObj}) {
    return DownloadsState(
      downloadsModelObj: downloadsModelObj ?? this.downloadsModelObj,
    );
  }
}
