import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reviewers_community/app/modules/home/views/product_filter_dialog.dart';

import '../../../../AppTheme.dart';
import '../../../../SizeConfig.dart';
import '../controllers/home_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../../utils/custom/navigation/CustomBottomNavigation.dart';

class HomeView extends GetView<HomeController> {

  late NavigationBarTheme navigationBarTheme;

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    navigationBarTheme = AppTheme.getNavigationThemeFromMode(2);
    return Obx(() {
      return Scaffold(
        body: Container(
              color: context.theme.backgroundColor,
              child: ListView(
                  padding: Spacing.top(48),
                  children: [
                    Container(
                      margin: Spacing.fromLTRB(24, 0, 24, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Reviewers Community",
                                  style: AppTheme.getTextStyle(
                                      context.theme.textTheme.bodyText2,
                                      fontWeight: 400,
                                      letterSpacing: 0,
                                      color: context.theme.colorScheme
                                          .onBackground),
                                ),
                                Container(
                                  child: Text(
                                    "Discover Deals",
                                    style: AppTheme.getTextStyle(
                                        context.theme.textTheme.headline5,
                                        fontSize: 24,
                                        fontWeight: 700,
                                        letterSpacing: -0.3,
                                        color:
                                        context.theme.colorScheme.onBackground),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                padding: Spacing.all(10),
                                decoration: BoxDecoration(
                                    color: context.theme.colorScheme.background,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(MySize.size8!)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: context.theme.shadowColor,
                                          blurRadius: 2)
                                    ]),
                                child: Icon(
                                  MdiIcons.bell,
                                  size: MySize.size18,
                                  color: context.theme.colorScheme.onBackground
                                      .withAlpha(160),
                                ),
                              ),
                              Positioned(
                                right: 4,
                                top: 4,
                                child: Container(
                                  width: MySize.size6,
                                  height: MySize.size6,
                                  decoration: BoxDecoration(
                                      color: context.theme.errorColor,
                                      shape: BoxShape.circle),
                                ),
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.PROFILE);
                            },
                            child: Container(
                              margin: Spacing.left(16),
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(MySize.size8!)),
                                child: Image(
                                  image: AssetImage(
                                      './assets/images/avatar-2.jpg'),
                                  width: MySize.size36,
                                  height: MySize.size36,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                        margin: Spacing.fromLTRB(24, 24, 24, 0),
                        child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: Spacing.vertical(4),
                                  decoration: BoxDecoration(
                                      color: context.theme.colorScheme
                                          .background,
                                      border: Border.all(
                                          color: context.theme
                                              .colorScheme.onBackground,
                                          width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MySize.size8!))),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: Spacing.left(12),
                                        child: Icon(
                                          MdiIcons.magnify,
                                          color: context.theme.colorScheme
                                              .onBackground
                                              .withAlpha(200),
                                          size: MySize.size16,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: Spacing.left(12),
                                          child: TextFormField(
                                            style: AppTheme.getTextStyle(
                                                context.theme.textTheme
                                                    .bodyText2,
                                                color: context.theme
                                                    .colorScheme.onBackground,
                                                fontWeight: 500),
                                            decoration: InputDecoration(
                                              fillColor: context.theme
                                                  .colorScheme.onBackground,
                                              hintStyle: AppTheme.getTextStyle(
                                                  context.theme.textTheme
                                                      .bodyText2,
                                                  color: context.theme
                                                      .colorScheme.onBackground,
                                                  muted: true,
                                                  fontWeight: 500),
                                              hintText: "Find Products...",
                                              border: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              isDense: true,
                                            ),
                                            textCapitalization:
                                            TextCapitalization.sentences,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          ProductFilterDialog());
                                },
                                child: Container(
                                  margin: Spacing.left(16),
                                  padding: Spacing.all(8),
                                  decoration: BoxDecoration(
                                      color: context.theme.colorScheme.primary,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(MySize.size8!)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: context.theme.colorScheme
                                                .primary
                                                .withAlpha(80),
                                            blurRadius: MySize.size4!,
                                            offset: Offset(0, MySize.size2))
                                      ]),
                                  child: Icon(
                                    MdiIcons.tune,
                                    size: MySize.size20,
                                    color: context.theme.colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ])),

                    Container(
                      margin: Spacing.top(8),
                      padding: Spacing.vertical(8),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              margin: Spacing.left(12),
                              child: singleCategory(
                                  context: context,
                                  title: "All",
                                  iconData: MdiIcons.ballotOutline,
                                  index: 0),
                            ),
                            singleCategory(
                                context: context,
                                title: "Amazon",
                                iconData: MdiIcons.cakeVariant,
                                index: 1),
                            singleCategory(
                                context: context,
                                title: "Flipkart",
                                iconData: MdiIcons.partyPopper,
                                index: 2),
                            singleCategory(
                                context: context,
                                title: "Meesho",
                                iconData: MdiIcons.chatOutline,
                                index: 3),
                            Container(
                              margin: Spacing.right(24),
                              child: singleCategory(
                                  context: context,
                                  title: "Myntra",
                                  iconData: MdiIcons.food,
                                  index: 4),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ]
              )
          ),
        bottomNavigationBar: CustomBottomNavigation(
          animationDuration: Duration(milliseconds: 350),
          // selectedItemOverlayColor:
          // navigationBarTheme.selectedOverlayColor,
          backgroundColor: navigationBarTheme.backgroundColor,
          selectedIndex: controller.currentIndex.value,
          onItemSelected: (index) {
            controller.setCurrentIndex(index);
            // _pageController!.jumpToPage(index);
          },
          items: <CustomBottomNavigationBarItem>[
            CustomBottomNavigationBarItem(
                title: "Home",
                icon: Icon(MdiIcons.homeOutline, size: MySize.size22),
                activeIcon: Icon(MdiIcons.home, size: MySize.size22),
                activeColor: navigationBarTheme.selectedItemColor,
                inactiveColor: navigationBarTheme.unselectedItemColor),
            CustomBottomNavigationBarItem(
                title: "My Feed",
                icon: Icon(MdiIcons.bookmarkOutline, size: MySize.size22),
                activeIcon: Icon(MdiIcons.bookmark, size: MySize.size22),
                activeColor: navigationBarTheme.selectedItemColor,
                inactiveColor: navigationBarTheme.unselectedItemColor),
            CustomBottomNavigationBarItem(
                title: "Video",
                icon: Icon(MdiIcons.playCircleOutline, size: MySize.size22),
                activeIcon: Icon(MdiIcons.playCircle, size: MySize.size22),
                activeColor: navigationBarTheme.selectedItemColor,
                inactiveColor: navigationBarTheme.unselectedItemColor),
            CustomBottomNavigationBarItem(
                title: "Profile",
                icon: Icon(
                  MdiIcons.accountOutline,
                  size: MySize.size22,
                ),
                activeIcon: Icon(
                  MdiIcons.account,
                  size: MySize.size22,
                ),
                activeColor: navigationBarTheme.selectedItemColor,
                inactiveColor: navigationBarTheme.unselectedItemColor),
          ],
        ),
      );
    });
  }

  Widget singleCategory({BuildContext? context, IconData? iconData, required String title, int? index}) {
    bool isSelected = (controller.selectedCategory.value == index);
    return InkWell(
        onTap: () {
          if (!isSelected) {
            controller.selectedCategory.value = index!;
          }
        },
        child: Container(
          margin: Spacing.fromLTRB(12, 8, 0, 8),
          decoration: BoxDecoration(
              color: isSelected
                  ? context?.theme.colorScheme.primary
                  : context?.theme.backgroundColor,
              border: Border.all(
                  color: context!.theme.colorScheme.onBackground, width: isSelected ? 0 : 0.8),
              borderRadius: BorderRadius.all(Radius.circular(MySize.size8!)),
              boxShadow: isSelected
                  ? [
                BoxShadow(
                    color: context.theme.colorScheme.primary.withAlpha(80),
                    blurRadius: MySize.size6!,
                    spreadRadius: 1,
                    offset: Offset(0, MySize.size2))
              ]
                  : []),
          padding: Spacing.fromLTRB(16, 8, 16, 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                iconData,
                size: MySize.size22,
                color: isSelected
                    ? context.theme.colorScheme.onPrimary
                    : context.theme.colorScheme.onBackground,
              ),
              Container(
                margin: Spacing.left(8),
                child: Text(
                  title,
                  style: AppTheme.getTextStyle(context.theme.textTheme.bodyText2!,
                      color: isSelected
                          ? context.theme.colorScheme.onPrimary
                          : context.theme.colorScheme.onBackground),
                ),
              )
            ],
          ),
        ));
  }

}
