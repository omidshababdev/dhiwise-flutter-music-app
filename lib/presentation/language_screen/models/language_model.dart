// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel extends Equatable {LanguageModel({this.radioList = const [], this.radioList1 = const [], }) {  }

List<String> radioList;

List<String> radioList1;

LanguageModel copyWith({List<String>? radioList, List<String>? radioList1, }) { return LanguageModel(
radioList : radioList ?? this.radioList,
radioList1 : radioList1 ?? this.radioList1,
); } 
@override List<Object?> get props => [radioList,radioList1];
 }
