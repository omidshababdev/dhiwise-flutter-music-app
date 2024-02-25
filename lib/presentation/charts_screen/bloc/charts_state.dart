// ignore_for_file: must_be_immutable

part of 'charts_bloc.dart';

/// Represents the state of Charts in the application.
class ChartsState extends Equatable {
  ChartsState({this.chartsModelObj});

  ChartsModel? chartsModelObj;

  @override
  List<Object?> get props => [
        chartsModelObj,
      ];

  ChartsState copyWith({ChartsModel? chartsModelObj}) {
    return ChartsState(
      chartsModelObj: chartsModelObj ?? this.chartsModelObj,
    );
  }
}
