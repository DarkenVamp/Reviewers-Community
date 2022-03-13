import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../AppTheme.dart';
import '../../../../SizeConfig.dart';
import '../controllers/profile_controller.dart';
import '../../../routes/app_pages.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.all(MySize.size24!),
          children: <Widget>[
            _upgradeWidget(context),
            Container(
              margin: Spacing.top(24),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(MySize.size6!)),
                        color: context.theme.colorScheme.primary),
                    padding: Spacing.all(10),
                    child: Icon(
                      MdiIcons.tuneVariant,
                      size: MySize.size20,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(
                    width: MySize.size16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.bodyText2,
                            color: context.theme.colorScheme.onBackground,
                            fontWeight: 700),
                      ),
                      Text(
                        "Edit and manage your account details",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.caption,
                            color: context.theme.colorScheme.onBackground,
                            letterSpacing: 0,
                            muted: true,
                            fontWeight: 600),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
            child: Obx ((){ if (controller.uiLoading.value){
              return Container();
        } else {
            return Container(
              margin: Spacing.top(16),
              padding: Spacing.vertical(8),
              decoration: BoxDecoration(
                color: context.theme.backgroundColor,
                borderRadius:
                BorderRadius.all(Radius.circular(MySize.size8!)),
              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => EditProfileScreen()));
                    },
                    leading: ClipRRect(
                        borderRadius: BorderRadius.all(
                            Radius.circular(MySize.size8!)),
                        child: Image(
                          image:
                          AssetImage('./assets/images/avatar-2.jpg'),
                          height: MySize.size44,
                          width: MySize.size44,
                        )),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // controller.user.value,
                          "Maria M. Boyles",
                          style: AppTheme.getTextStyle(
                              context.theme.textTheme.subtitle2,
                              color: context.theme.colorScheme.onBackground,
                              fontWeight: 700),
                        ),
                        Text(
                          "Editor",
                          style: AppTheme.getTextStyle(
                              context.theme.textTheme.bodyText2,
                              color: context.theme.colorScheme.onBackground,
                              letterSpacing: 0,
                              muted: true,
                              fontWeight: 600),
                        )
                      ],
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: context.theme.colorScheme.onBackground,
                    ),
                  ),
                  SizedBox(
                    height: MySize.size8,
                  ),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: AppTheme.getTextStyle(
                              context.theme.textTheme.bodyText2,
                              color: context.theme.colorScheme.onBackground,
                              letterSpacing: 0,
                              xMuted: true,
                              fontWeight: 600),
                        ),
                        Text(
                          "maria@coderthemes.com",
                          style: AppTheme.getTextStyle(
                              context.theme.textTheme.subtitle2,
                              color: context.theme.colorScheme.onBackground,
                              fontWeight: 600),
                        )
                      ],
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: context.theme.colorScheme.onBackground,
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone",
                          style: AppTheme.getTextStyle(
                              context.theme.textTheme.bodyText2,
                              color: context.theme.colorScheme.onBackground,
                              letterSpacing: 0,
                              xMuted: true,
                              fontWeight: 600),
                        ),
                        Text(
                          "+91 98765 43210",
                          style: AppTheme.getTextStyle(
                              context.theme.textTheme.subtitle2,
                              color: context.theme.colorScheme.onBackground,
                              fontWeight: 600),
                        )
                      ],
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: context.theme.colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            );}})),
            Container(
              margin: Spacing.top(24),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(MySize.size6!)),
                        color: context.theme.colorScheme.primary),
                    padding: Spacing.all(10),
                    child: Icon(
                      MdiIcons.emailOpenOutline,
                      size: MySize.size20,
                      color: context.theme.colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(
                    width: MySize.size16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help and Feedback",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.bodyText2,
                            color: context.theme.colorScheme.onBackground,
                            fontWeight: 700),
                      ),
                      Text(
                        "Reach us with your feedback and questions",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.caption,
                            color: context.theme.colorScheme.onBackground,
                            letterSpacing: 0,
                            muted: true,
                            fontWeight: 600),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: Spacing.top(16),
              padding: Spacing.vertical(8),
              decoration: BoxDecoration(
                color: context.theme.backgroundColor,
                borderRadius:
                BorderRadius.all(Radius.circular(MySize.size8!)),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      MdiIcons.frequentlyAskedQuestions,
                      color: context.theme.colorScheme.onBackground,
                    ),
                    title: Text(
                      "FAQs",
                      style: AppTheme.getTextStyle(
                          context.theme.textTheme.bodyText1,
                          color: context.theme.colorScheme.onBackground,
                          fontWeight: 600),
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: context.theme.colorScheme.onBackground,
                    ),
                    onTap: (){
                      Get.toNamed(Routes.FAQ);
                    },
                  ),
                  Divider(height: 0,),
                  ListTile(
                    leading: Icon(
                      MdiIcons.youtube,
                      color: context.theme.colorScheme.onBackground,
                    ),
                    title: Text(
                      "Videos",
                      style: AppTheme.getTextStyle(
                          context.theme.textTheme.bodyText1,
                          color: context.theme.colorScheme.onBackground,
                          fontWeight: 600),
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: context.theme.colorScheme.onBackground,
                    ),
                  ),
                  Divider(height: 0,),
                  ListTile(
                    leading: Icon(
                      MdiIcons.emailOutline,
                      color: context.theme.colorScheme.onBackground,
                    ),
                    title: Text(
                      "Contact us",
                      style: AppTheme.getTextStyle(
                          context.theme.textTheme.bodyText1,
                          color: context.theme.colorScheme.onBackground,
                          fontWeight: 600),
                    ),
                    trailing: Icon(
                      MdiIcons.chevronRight,
                      color: context.theme.colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
            ),
          ],
      )
    );
  }

  _upgradeWidget(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.darkTheme.colorScheme.background,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: AppTheme.theme.dialogBackgroundColor, width: 1)),
      padding: Spacing.all(16),
      child: Column(
        children: [
          Text(
            "Become Pro",
            style: AppTheme.getTextStyle(AppTheme.lightTextTheme.bodyText1,
                color: AppTheme.darkTheme.colorScheme.onBackground, fontWeight: 600),
          ),
          Text(
            "Get more done with pro",
            style: AppTheme.getTextStyle(AppTheme.lightTextTheme.bodyText2,
                color: AppTheme.darkTheme.colorScheme.onBackground, fontWeight: 500),
          ),
          Container(
            margin: Spacing.top(8),
            padding: Spacing.fromLTRB(16, 8, 16, 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(MySize.size6!)),
                color: AppTheme.darkTheme.colorScheme.primary),
            child: Text(
              "Upgrade now",
              style: AppTheme.getTextStyle(AppTheme.darkTheme.textTheme.caption,
                  color: AppTheme.darkTheme.colorScheme.onPrimary,
                  fontWeight: 600,
                  letterSpacing: 0.3),
            ),
          )
        ],
      ),
    );
  }
}
