import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reviewers_community/app/modules/login/views/login_view.dart';
import 'package:reviewers_community/app/modules/products/views/products_view.dart';

import '../../../../AppTheme.dart';
import '../../../../SizeConfig.dart';
import '../controllers/register_controller.dart';
import '../../../routes/app_pages.dart';


class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: MySize.size24!, right: MySize.size24!),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "Create an Account",
                    style: AppTheme.getTextStyle(
                        context.theme.textTheme.headline6,
                        fontWeight: 600),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size24!),
                child: TextFormField(
                  style: AppTheme.getTextStyle(
                      context.theme.textTheme.bodyText1,
                      letterSpacing: 0.1,
                      color: context.theme.colorScheme.onBackground,
                      fontWeight: 500),
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: AppTheme.getTextStyle(
                        context.theme.textTheme.bodyText1,
                        letterSpacing: 0.1,
                        color: context.theme.colorScheme.onBackground,
                        fontWeight: 500),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: context.theme.colorScheme.background,
                    prefixIcon: Icon(
                      MdiIcons.accountOutline,
                      size: MySize.size22,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(0),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size24!),
                child: TextFormField(
                  style: AppTheme.getTextStyle(
                      context.theme.textTheme.bodyText1,
                      letterSpacing: 0.1,
                      color: context.theme.colorScheme.onBackground,
                      fontWeight: 500),
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                        context.theme.textTheme.bodyText1,
                        letterSpacing: 0.1,
                        color: context.theme.colorScheme.onBackground,
                        fontWeight: 500),
                    hintText: "Email address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: context.theme.colorScheme.background,
                    prefixIcon: Icon(
                      MdiIcons.emailOutline,
                      size: MySize.size22,
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(0),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.sentences,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size24!),
                child: TextFormField(
                  style: AppTheme.getTextStyle(
                      context.theme.textTheme.bodyText1,
                      letterSpacing: 0.1,
                      color: context.theme.colorScheme.onBackground,
                      fontWeight: 500),
                  obscureText: controller.passwordVisible.value,
                  decoration: InputDecoration(
                    hintStyle: AppTheme.getTextStyle(
                        context.theme.textTheme.bodyText1,
                        letterSpacing: 0.1,
                        color: context.theme.colorScheme.onBackground,
                        fontWeight: 500),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: context.theme.colorScheme.background,
                    prefixIcon: Icon(
                      MdiIcons.lockOutline,
                      size: MySize.size22,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                          controller.passwordVisible.value = !controller.passwordVisible.value;
                      },
                      child: Icon(
                        controller.passwordVisible.value
                            ? MdiIcons.eyeOutline
                            : MdiIcons.eyeOffOutline,
                        size: MySize.size22,
                      ),
                    ),
                    isDense: true,
                    contentPadding: EdgeInsets.all(0),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(MySize.size48!)),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.primaryColor.withAlpha(20),
                      spreadRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                margin: EdgeInsets.only(top: MySize.size24!),
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(Spacing.xy(16, 0))
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  },
                  child: Text(
                    "Register",
                    style: AppTheme.getTextStyle(
                        context.theme.textTheme.bodyText1,
                        fontWeight: 600,
                        color: context.theme.colorScheme.onPrimary),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size16!),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text("I've already an account",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.bodyText2,
                            decoration: TextDecoration.underline)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
