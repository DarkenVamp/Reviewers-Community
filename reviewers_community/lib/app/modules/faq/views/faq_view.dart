import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../AppTheme.dart';
import '../../../../SizeConfig.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(MdiIcons.chevronLeft),
          ),
          title: Text("FAQ",
              style: AppTheme.getTextStyle(
                  context.theme.textTheme.headline6,
                  fontWeight: 600)),
        ),
        backgroundColor: context.theme.backgroundColor,
        body: Obx((){
          return Container(
            child: ListView(
              padding: EdgeInsets.only(bottom: MySize.size16!),
              children: <Widget>[
                ExpansionPanelList(
                  expandedHeaderPadding: EdgeInsets.all(0),
                  expansionCallback: (int index, bool isExpanded) {
                    controller.dataExpansionPanel.value[index] = !isExpanded;
                  },
                  animationDuration: Duration(milliseconds: 500),
                  children: <ExpansionPanel>[
                    ExpansionPanel(
                        canTapOnHeader: true,
                        headerBuilder:
                            (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text("What is offers",
                                style: AppTheme.getTextStyle(
                                    context.theme.textTheme.subtitle2,
                                    color: isExpanded
                                        ? context.theme.colorScheme.primary
                                        : context.theme
                                        .colorScheme.onBackground,
                                    fontWeight: isExpanded
                                        ? 600
                                        : 500)),
                          );
                        },
                        body: Container(
                          padding: EdgeInsets.only(bottom: MySize.size16!,
                              left: MySize.size16!,
                              right: MySize.size16!), child: Center(
                          child: Text(controller.content.value[0],
                              style: AppTheme.getTextStyle(
                                  context.theme.textTheme.bodyText2,
                                  fontWeight: 500)),
                        ),
                        ),
                        isExpanded: controller.dataExpansionPanel.value[0]),
                    ExpansionPanel(
                        canTapOnHeader: true,
                        headerBuilder:
                            (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text(
                                "How do i make payment with credit card",
                                style: AppTheme.getTextStyle(
                                    context.theme.textTheme.subtitle2,
                                    color: isExpanded
                                        ? context.theme.colorScheme.primary
                                        : context.theme
                                        .colorScheme.onBackground,
                                    fontWeight: isExpanded
                                        ? 600
                                        : 500)),
                          );
                        },
                        body: Container(
                          padding: EdgeInsets.only(bottom: MySize.size16!,
                              left: MySize.size16!,
                              right: MySize.size16!), child: Center(
                          child: Text(controller.content.value[1],
                              style: AppTheme.getTextStyle(
                                  context.theme.textTheme.bodyText2,
                                  fontWeight: 500)),
                        ),
                        ),
                        isExpanded: controller.dataExpansionPanel.value[1]),
                    ExpansionPanel(
                        canTapOnHeader: true,
                        headerBuilder:
                            (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text("How can i upgrade my membership",
                                style: AppTheme.getTextStyle(
                                    context.theme.textTheme.subtitle2,
                                    color: isExpanded
                                        ? context.theme.colorScheme.primary
                                        : context.theme
                                        .colorScheme.onBackground,
                                    fontWeight: isExpanded
                                        ? 600
                                        : 500)),
                          );
                        },
                        body: Container(
                          padding: EdgeInsets.only(bottom: MySize.size16!,
                              left: MySize.size16!,
                              right: MySize.size16!), child: Center(
                          child: Text(controller.content.value[2],
                              style: AppTheme.getTextStyle(
                                  context.theme.textTheme.bodyText2,
                                  fontWeight: 500)),
                        ),
                        ),
                        isExpanded: controller.dataExpansionPanel.value[2]),
                    ExpansionPanel(
                        canTapOnHeader: true,
                        headerBuilder:
                            (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text("How i contact with seller",
                                style: AppTheme.getTextStyle(
                                    context.theme.textTheme.subtitle2,
                                    color: isExpanded
                                        ? context.theme.colorScheme.primary
                                        : context.theme
                                        .colorScheme.onBackground,
                                    fontWeight: isExpanded
                                        ? 600
                                        : 500)),
                          );
                        },
                        body: Container(
                          padding: EdgeInsets.only(bottom: MySize.size16!,
                              left: MySize.size16!,
                              right: MySize.size16!),
                          child: Center(
                            child: Text(controller.content.value[3],
                                style: AppTheme.getTextStyle(
                                    context.theme.textTheme.subtitle2,
                                    fontWeight: 500)),
                          ),
                        ),
                        isExpanded: controller.dataExpansionPanel.value[3]),
                    ExpansionPanel(
                        canTapOnHeader: true,
                        headerBuilder:
                            (BuildContext context, bool isExpanded) {
                          return ListTile(
                            title: Text("Where is my order",
                                style: AppTheme.getTextStyle(
                                    context.theme.textTheme.bodyText1,
                                    color: isExpanded
                                        ? context.theme.colorScheme.primary
                                        : context.theme
                                        .colorScheme.onBackground,
                                    fontWeight: isExpanded
                                        ? 600
                                        : 500)),
                          );
                        },
                        body: Container(
                          padding: EdgeInsets.only(bottom: MySize.size16!,
                              left: MySize.size16!,
                              right: MySize.size16!), child: Center(
                          child: Text(controller.content.value[4],
                              style: AppTheme.getTextStyle(
                                  context.theme.textTheme.bodyText2,
                                  fontWeight: 500)),
                        ),
                        ),
                        isExpanded: controller.dataExpansionPanel.value[4]),

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: MySize.size16!),
                  child: Center(
                    child: Text("Visit our site",
                      style: AppTheme.getTextStyle(
                          context.theme.textTheme.bodyText1,
                          color: context.theme.colorScheme.primary,
                          fontWeight: 600),
                    ),
                  ),
                )
              ],
            ),
          );
        })
    );
  }
}
