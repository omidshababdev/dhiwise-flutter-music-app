import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/history_podcast_bloc.dart';
import 'models/history_podcast_model.dart';
import 'models/historypodcast_item_model.dart';
import 'widgets/historypodcast_item_widget.dart';

// ignore_for_file: must_be_immutable
class HistoryPodcastPage extends StatefulWidget {
  const HistoryPodcastPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPodcastPageState createState() => HistoryPodcastPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryPodcastBloc>(
      create: (context) => HistoryPodcastBloc(HistoryPodcastState(
        historyPodcastModelObj: HistoryPodcastModel(),
      ))
        ..add(HistoryPodcastInitialEvent()),
      child: HistoryPodcastPage(),
    );
  }
}

class HistoryPodcastPageState extends State<HistoryPodcastPage>
    with AutomaticKeepAliveClientMixin<HistoryPodcastPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildHistoryPodcast(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistoryPodcast(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: BlocSelector<HistoryPodcastBloc, HistoryPodcastState,
            HistoryPodcastModel?>(
          selector: (state) => state.historyPodcastModelObj,
          builder: (context, historyPodcastModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 24.v,
                );
              },
              itemCount:
                  historyPodcastModelObj?.historypodcastItemList.length ?? 0,
              itemBuilder: (context, index) {
                HistorypodcastItemModel model =
                    historyPodcastModelObj?.historypodcastItemList[index] ??
                        HistorypodcastItemModel();
                return HistorypodcastItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
