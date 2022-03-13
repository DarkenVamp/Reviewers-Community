import 'dart:math';
import 'dart:ui';
import 'package:reviewers_community/app/modules/home/views/home_view.dart';

import '../../../../../utils/Generator.dart';
import '../../../../../utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutx/themes/text_style.dart';
import 'package:flutx/utils/spacing.dart';
import 'package:flutx/utils/text_utils.dart';
import 'package:flutx/widgets/container/container.dart';
import 'package:flutx/widgets/text/text.dart';
import 'package:flutx/widgets/text_field/text_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:get/get.dart';

import '../../../../AppTheme.dart';
import '../controllers/products_controller.dart';
import '../../../data/models/product_model.dart';
import '../../../routes/app_pages.dart';


class ProductsView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppTheme.customTheme.groceryBg1,
        body: Obx(() {
          if (controller.isDataProcessing.value == true) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (controller.listProduct.isNotEmpty) {
              return Column(
                  // padding: Spacing.fromLTRB(24, 48, 24, 70),
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: FxTextField(
                              hintText: "Search for Products",
                              prefixIcon: Icon(
                                FeatherIcons.search,
                                size: 18,
                                color: AppTheme.theme.colorScheme.onBackground
                                    .withAlpha(150),
                              ),
                              filled: true,
                              isDense: true,
                              fillColor: AppTheme.customTheme.groceryBg2,
                              hintStyle: FxTextStyle.b2(),
                              labelStyle: FxTextStyle.b2(),
                              style: FxTextStyle.b2(),
                              textCapitalization: TextCapitalization.sentences,
                              labelText: "Search for Products",
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              cursorColor: AppTheme.customTheme.groceryPrimary,
                              focusedBorderColor: Colors.transparent,
                            ),
                          ),
                          FxSpacing.width(16),
                          //Space.width(16),
                          FxContainer(
                            color:
                            AppTheme.customTheme.groceryPrimary.withAlpha(32),
                            child: Transform.rotate(
                              angle: pi / 2,
                              child: Icon(
                                FeatherIcons.sliders,
                                color: AppTheme.customTheme.groceryPrimary,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Expanded(child: ListView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.listProduct.length,
                        itemBuilder: (BuildContext context, int index){

                          return getSingleProduct(Product.fromJson(controller.listProduct[index]));
                        }
                    )),
                  ]);} else {
                  return Center(
                    child: Text(
                      'Data not found',
                      style: TextStyle(fontSize: 25),
                    ),
                  );
            }
          }
        }));}



  Widget getSingleProduct(dynamic product) {
    String heroKey = Generator.getRandomString(10);

    return InkWell(
      onTap: () {
        Get.toNamed(Routes.HOME);
      },
      child: FxContainer(
        margin: Spacing.bottom(16),
        color: AppTheme.customTheme.groceryBg2,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FxContainer(
              color: AppTheme.customTheme.groceryPrimary.withAlpha(32),
              padding: Spacing.all(2),
              child: Hero(
                tag: heroKey,
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:
                  FadeInImage(height: 50, width: 50,
                      image: product.image?. NetworkImage("https://5.imimg.com/data5/VU/LV/XT/SELLER-43133150/tomato-flavor-potato-chips-500x500.jpg")??AssetImage('assets/place_holder.png'), placeholder: AssetImage('assets/place_holder.png')
                )),
              ),
            ),
            FxSpacing.width(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FxText.b2(product.name!,
                      color: AppTheme.theme.colorScheme.onBackground,
                      fontWeight: 600),
                  FxSpacing.height(8),

                  FxText.overline(product.description!,
                      color: AppTheme.theme.colorScheme.onBackground, muted: true),
                  FxSpacing.height(8),
                  product.refund! != product.price
                      ? Row(
                    children: [
                      FxText.caption(
                          "\$" +
                              product.price!.toString(),
                          decoration: TextDecoration.lineThrough,
                          fontWeight: 500),
                      // Space.width(8),
                      FxSpacing.width(8),
                      FxText.b2(
                          "\$" +
                              product.price!.toString(),
                          color: AppTheme.theme.colorScheme.onBackground,
                          fontWeight: 700),
                    ],
                  )
                      : FxText.b2(
                      "\$" + product.price!.toString(),
                      color: AppTheme.theme.colorScheme.onBackground,
                      fontWeight: 700),
                ],
              ),
            ),
            // Space.width(8),
            Icon(
              MdiIcons.whatsapp,
              color: AppTheme.customTheme.groceryPrimary,
              size: 18,
            )
          ],
        ),
      ),
    );
  }

}
