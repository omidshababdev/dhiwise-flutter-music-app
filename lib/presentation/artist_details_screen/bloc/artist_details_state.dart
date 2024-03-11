// ignore_for_file: must_be_immutable

part of 'artist_details_bloc.dart';

/// Represents the state of ArtistDetails in the application.
class ArtistDetailsState extends Equatable {
  ArtistDetailsState({this.artistDetailsModelObj});

  ArtistDetailsModel? artistDetailsModelObj;

  @override
  List<Object?> get props => [
        artistDetailsModelObj,
      ];

  ArtistDetailsState copyWith({ArtistDetailsModel? artistDetailsModelObj}) {
    return ArtistDetailsState(
      artistDetailsModelObj:
          artistDetailsModelObj ?? this.artistDetailsModelObj,
    );
  }
}
