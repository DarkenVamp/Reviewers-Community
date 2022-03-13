import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../AppTheme.dart';
import '../../../../SizeConfig.dart';
import '../controllers/forgot_password_controller.dart';
import '../../../routes/app_pages.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      body: Container(
        padding: EdgeInsets.only(left: MySize.size24!, right: MySize.size24!),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "Forgot Password?",
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
                    hintText: "Email address",
                    hintStyle: AppTheme.getTextStyle(
                        context.theme.textTheme.subtitle2,
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
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(MySize.size48!)),
                  boxShadow: [
                    BoxShadow(
                      color: context.theme.primaryColor.withAlpha(28),
                      blurRadius: 4,
                      offset:
                      Offset(0, 3),
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
                    "Reset Password",
                    style: AppTheme.getTextStyle(
                        context.theme.textTheme.bodyText2,
                        fontWeight: 600)
                        .merge(TextStyle(
                        color: context.theme.colorScheme.onPrimary,
                        letterSpacing: 0.5)),
                  ),

                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size16!),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: Text(
                      "I haven't an account",
                      style: AppTheme.getTextStyle(
                          context.theme.textTheme.bodyText2,
                          decoration: TextDecoration.underline),
                    ),
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
