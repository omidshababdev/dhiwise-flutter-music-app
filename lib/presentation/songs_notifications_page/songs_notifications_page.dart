import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/songs_notifications_bloc.dart';
import 'models/songs_notifications_model.dart';
import 'models/songsnotifications_item_model.dart';
import 'widgets/songsnotifications_item_widget.dart';

// ignore_for_file: must_be_immutable
class SongsNotificationsPage extends StatefulWidget {
  const SongsNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SongsNotificationsPageState createState() => SongsNotificationsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SongsNotificationsBloc>(
      create: (context) => SongsNotificationsBloc(SongsNotificationsState(
        songsNotificationsModelObj: SongsNotificationsModel(),
      ))
        ..add(SongsNotificationsInitialEvent()),
      child: SongsNotificationsPage(),
    );
  }
}

class SongsNotificationsPageState extends State<SongsNotificationsPage>
    with AutomaticKeepAliveClientMixin<SongsNotificationsPage> {
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
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_new_music_release".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 20.v),
                      _buildSongsNotifications(context),
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
  Widget _buildSongsNotifications(BuildContext context) {
    return BlocSelector<SongsNotificationsBloc, SongsNotificationsState,
        SongsNotificationsModel?>(
      selector: (state) => state.songsNotificationsModelObj,
      builder: (context, songsNotificationsModelObj) {
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
          itemCount:
              songsNotificationsModelObj?.songsnotificationsItemList.length ??
                  0,
          itemBuilder: (context, index) {
            SongsnotificationsItemModel model =
                songsNotificationsModelObj?.songsnotificationsItemList[index] ??
                    SongsnotificationsItemModel();
            return SongsnotificationsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
