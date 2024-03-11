// ignore_for_file: must_be_immutable

part of 'data_saver_storage_bloc.dart';

/// Represents the state of DataSaverStorage in the application.
class DataSaverStorageState extends Equatable {
  DataSaverStorageState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.dataSaverStorageModelObj,
  });

  DataSaverStorageModel? dataSaverStorageModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        dataSaverStorageModelObj,
      ];

  DataSaverStorageState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    DataSaverStorageModel? dataSaverStorageModelObj,
  }) {
    return DataSaverStorageState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      dataSaverStorageModelObj:
          dataSaverStorageModelObj ?? this.dataSaverStorageModelObj,
    );
  }
}
