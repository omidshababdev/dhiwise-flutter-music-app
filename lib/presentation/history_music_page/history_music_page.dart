import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'bloc/history_music_bloc.dart';import 'models/history_music_model.dart';import 'models/historymusic_item_model.dart';import 'widgets/historymusic_item_widget.dart';class HistoryMusicPage extends StatefulWidget {const HistoryMusicPage({Key? key}) : super(key: key);

@override HistoryMusicPageState createState() =>  HistoryMusicPageState();

static Widget builder(BuildContext context) { return BlocProvider<HistoryMusicBloc>(create: (context) => HistoryMusicBloc(HistoryMusicState(historyMusicModelObj: HistoryMusicModel()))..add(HistoryMusicInitialEvent()), child: HistoryMusicPage()); } 
 }
class HistoryMusicPageState extends State<HistoryMusicPage> with  AutomaticKeepAliveClientMixin<HistoryMusicPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 30.v), _buildHistoryMusic(context)])))); } 
/// Section Widget
Widget _buildHistoryMusic(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<HistoryMusicBloc, HistoryMusicState, HistoryMusicModel?>(selector: (state) => state.historyMusicModelObj, builder: (context, historyMusicModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: historyMusicModelObj?.historymusicItemList.length ?? 0, itemBuilder: (context, index) {HistorymusicItemModel model = historyMusicModelObj?.historymusicItemList[index] ?? HistorymusicItemModel(); return HistorymusicItemWidget(model, onTapSongCard: () {onTapSongCard(context);});});})); } 
/// Navigates to the songPlayScreen when the action is triggered.
onTapSongCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.songPlayScreen, ); } 
 }
