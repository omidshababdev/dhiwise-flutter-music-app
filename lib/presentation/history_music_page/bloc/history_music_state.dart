// ignore_for_file: must_be_immutable

part of 'history_music_bloc.dart';

/// Represents the state of HistoryMusic in the application.
class HistoryMusicState extends Equatable {
  HistoryMusicState({this.historyMusicModelObj});

  HistoryMusicModel? historyMusicModelObj;

  @override
  List<Object?> get props => [
        historyMusicModelObj,
      ];

  HistoryMusicState copyWith({HistoryMusicModel? historyMusicModelObj}) {
    return HistoryMusicState(
      historyMusicModelObj: historyMusicModelObj ?? this.historyMusicModelObj,
    );
  }
}
