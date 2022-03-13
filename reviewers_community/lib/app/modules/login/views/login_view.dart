import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reviewers_community/app/modules/forgot_password/views/forgot_password_view.dart';
import 'package:reviewers_community/app/modules/products/views/products_view.dart';
import 'package:reviewers_community/app/modules/register/views/register_view.dart';

import '../../../../AppTheme.dart';
import '../../../../utils/SizeConfig.dart';
import '../controllers/login_controller.dart';
import '../../../routes/app_pages.dart';


class LoginView extends GetView<LoginController> {

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
        body: Obx(() {
          return Container(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        "Welcome Back!",
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
                          size: 22,
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(MySize.size0!),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    child: TextFormField(
                      autofocus: false,
                      obscureText: controller.passwordVisible.value,
                      style: AppTheme.getTextStyle(
                          context.theme.textTheme.bodyText1,
                          letterSpacing: 0.1,
                          color: context.theme.colorScheme.onBackground,
                          fontWeight: 500),
                      decoration: InputDecoration(
                        hintStyle: AppTheme.getTextStyle(
                            context.theme.textTheme.subtitle2,
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
                          size: 22,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                              controller.passwordVisible.value = !controller.passwordVisible.value;
                          },
                          child: Icon(
                            controller.passwordVisible.value
                                ? MdiIcons.eyeOutline
                                : MdiIcons.eyeOffOutline,
                            size: 22,
                          ),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.all(MySize.size0!),
                      ),
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: MySize.size16!),
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.FORGOT_PASSWORD);
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.bodyText2,
                            fontWeight: 500),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(MySize.size28!)),
                      boxShadow: [
                        BoxShadow(
                          color: context.theme.primaryColor.withAlpha(24),
                          blurRadius: 5,
                          offset:
                          Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(top: 24),
                    child: ElevatedButton(

                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(Spacing.xy(16, 0))
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Text(
                        "Sign in",
                        style: AppTheme.getTextStyle(
                            context.theme.textTheme.bodyText2,
                            fontWeight: 600)
                            .merge(TextStyle(
                            color: context.theme.colorScheme.onPrimary)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16),
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
          );
    })
    );
  }
}
