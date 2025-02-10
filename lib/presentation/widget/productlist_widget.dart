import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jayecommerce/config/app_asset.dart';
import 'package:jayecommerce/data/model/product_model.dart';

class ProductlistWidget extends StatelessWidget {
  final ProductModel productModel;
  ProductlistWidget({required this.productModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        //color: Colors.red,
        elevation: 3,
        margin: EdgeInsets.only(bottom: 10.8),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "",
                child: productModel.productName != ""
                    ? Expanded(
                        child:
                            // CachedNetworkImage(
                            //   color: Colors.blue,
                            //   width: 100,
                            //   height: 100,
                            //   imageUrl:
                            //       "https://1drv.ms/i/c/c6622c4454aa5df0/EfBdqlRELGIggMZwgAEAAAAB8wTBFWTyfN4DqI_wS90TTQ?e=LDU8Ab",
                            //   // imageBuilder: (context, imageProvider) => Container(
                            //   //   decoration: BoxDecoration(
                            //   //     image: DecorationImage(
                            //   //         image: imageProvider,
                            //   //         //fit: BoxFit.cover,
                            //   //         colorFilter: ColorFilter.mode(
                            //   //             Colors.red, BlendMode.colorBurn)),
                            //   //   ),
                            //   // ),
                            //   placeholder: (context, url) => Text(""),
                            //   errorWidget: (context, url, error) =>
                            //       Text(error.toString()),
                            // ),
                            Image.asset(
                                'assets/images/Screenshot_20220125-203643.jpg',
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover))
                    : SvgPicture.asset(
                        AppAsset.FilterIcon,
                        height: 70,
                      ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                productModel.productName,
                style: TextStyle(fontStyle: FontStyle.normal),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(
                height: 20,
              ),
              // product!.priceTags.isNotEmpty
              //     ? Text(
              //         r'$ ' + product!.priceTags.first.price.toString(),
              //         style: AppText.h3?.copyWith(
              //           color: AppColors.CommonCyan,
              //         ),
              //       )
              //     : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
