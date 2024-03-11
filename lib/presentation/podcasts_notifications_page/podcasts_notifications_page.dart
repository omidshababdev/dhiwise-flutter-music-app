import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/podcasts_notifications_bloc.dart';
import 'models/podcasts_notifications_model.dart';
import 'models/podcastsnotifications_item_model.dart';
import 'widgets/podcastsnotifications_item_widget.dart';

// ignore_for_file: must_be_immutable
class PodcastsNotificationsPage extends StatefulWidget {
  const PodcastsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PodcastsNotificationsPageState createState() =>
      PodcastsNotificationsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PodcastsNotificationsBloc>(
      create: (context) => PodcastsNotificationsBloc(PodcastsNotificationsState(
        podcastsNotificationsModelObj: PodcastsNotificationsModel(),
      ))
        ..add(PodcastsNotificationsInitialEvent()),
      child: PodcastsNotificationsPage(),
    );
  }
}

class PodcastsNotificationsPageState extends State<PodcastsNotificationsPage>
    with AutomaticKeepAliveClientMixin<PodcastsNotificationsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_podcasts_release".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 22.v),
                      _buildPodcastsNotifications(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPodcastsNotifications(BuildContext context) {
    return BlocSelector<PodcastsNotificationsBloc, PodcastsNotificationsState,
        PodcastsNotificationsModel?>(
      selector: (state) => state.podcastsNotificationsModelObj,
      builder: (context, podcastsNotificationsModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: podcastsNotificationsModelObj
                  ?.podcastsnotificationsItemList.length ??
              0,
          itemBuilder: (context, index) {
            PodcastsnotificationsItemModel model = podcastsNotificationsModelObj
                    ?.podcastsnotificationsItemList[index] ??
                PodcastsnotificationsItemModel();
            return PodcastsnotificationsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
