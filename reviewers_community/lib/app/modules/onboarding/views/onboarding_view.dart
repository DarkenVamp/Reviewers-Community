import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../AppTheme.dart';
import '../../../../SizeConfig.dart';
import '../controllers/onboarding_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../../utils/custom/onBoarding/CustomOnBoardingWidget.dart';
import '../../../../utils/custom/onBoarding/UI/pages.dart';


class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            color: context.theme.backgroundColor,
            child: CustomOnBoardingWidget(
              pages: <PageViewModel>[
                PageViewModel(
                  context.theme.backgroundColor,
                  Padding(
                    padding: EdgeInsets.all(MySize.size40!),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Center(
                            child: Image(
                              image: AssetImage(
                                  './assets/illustration/hotel/illu-1.png'),
                              width: MySize.getScaledSizeHeight(300),
                              height: MySize.getScaledSizeHeight(320),
                            )),
                        SizedBox(height: 30.0),
                        Text('Book a Hotel\nfrom Anywhere',
                            style: AppTheme.getTextStyle(context.theme.textTheme.bodyText1,fontWeight: 600)),
                        SizedBox(height: 15.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                          style: context.theme.textTheme.bodyText2!.merge(
                            TextStyle(
                                color: context.theme.colorScheme.onBackground
                                    .withAlpha(200),
                                letterSpacing: 0.1,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                PageViewModel(
                  context.theme.backgroundColor,
                  Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Center(
                            child: Image(
                              image: AssetImage(
                                  './assets/illustration/hotel/illu-2.png'),
                              width: 300,
                              height: 320,
                            )),
                        SizedBox(height: 30.0),
                        Text(
                          'Hotel Facility\nGames',
                          style: AppTheme.getTextStyle(context.theme.textTheme.bodyText1,fontWeight: 600),
                        ),
                        SizedBox(height: 15.0),
                        Text(
                            'Lorem ipsum dolor sit amet, consect adipiing elit, sed do eiusmod tempor incididunt ut labore et.',
                            style: context.theme.textTheme.bodyText2!.merge(
                              TextStyle(
                                  color: context.theme
                                      .colorScheme.onBackground
                                      .withAlpha(200),
                                  letterSpacing: 0.1,
                                  fontWeight: FontWeight.w500),
                            )),
                      ],
                    ),
                  ),
                ),
                PageViewModel(
                  context.theme.backgroundColor,
                  Padding(
                    padding: EdgeInsets.all(MySize.size40!),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                            child: Image(
                              image: AssetImage(
                                  './assets/illustration/hotel/illu-3.png'),
                              width: 300,
                              height: 320,
                            )),
                        SizedBox(height: MySize.size30),
                        Text('Hotel Facility\nPool',
                            style: AppTheme.getTextStyle(context.theme.textTheme.bodyText1,fontWeight: 600)),
                        SizedBox(height: 15.0),
                        Text(
                            'Lorem ipsum dolor sit amet, consect adicing elit, sed do eiusmod tempor incididunt ut labore et.',
                            style: context.theme.textTheme.bodyText2!.merge(
                              TextStyle(
                                  color: context.theme
                                      .colorScheme.onBackground
                                      .withAlpha(200),
                                  letterSpacing: 0.1,
                                  fontWeight: FontWeight.w500),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
              unSelectedIndicatorColor: context.theme.colorScheme.secondary,
              selectedIndicatorColor: context.theme.colorScheme.primary,
              doneWidget: Material(
                child: InkWell(
                  splashColor: context.theme.colorScheme.secondary,
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Text("DONE".toUpperCase(),
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.subtitle2,
                            color: context.theme.colorScheme.primary,
                            fontWeight: 700)),
                  ),
                ),
              ),
              skipWidget: Material(
                child: InkWell(
                  splashColor: context.theme.colorScheme.secondary,
                  onTap: () {
                    Get.toNamed(Routes.LOGIN);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Text("Skip".toUpperCase(),
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.subtitle2,
                            color: context.theme.colorScheme.secondary,
                            fontWeight: 700)),
                  ),
                ),
              ),
            ))
    );
  }
}
