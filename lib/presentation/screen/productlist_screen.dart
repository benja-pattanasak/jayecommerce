import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jayecommerce/config/app_asset.dart';
import 'package:jayecommerce/config/app_setting.dart';
import 'package:jayecommerce/config/app_space.dart';
import 'package:jayecommerce/core/redux/state/state.dart';
import 'package:jayecommerce/data/model/pagingrequest_model.dart';
import 'package:jayecommerce/data/model/product_model.dart';
import 'package:jayecommerce/data/repository/product_repository.dart';
import 'package:jayecommerce/presentation/widget/productlist_widget.dart';

class ProductlistScreen extends StatefulWidget {
  const ProductlistScreen({super.key});

  @override
  State<ProductlistScreen> createState() => _ProductlistScreenState();
}

class _ProductlistScreenState extends State<ProductlistScreen> {
  ScrollController _scrollController = ScrollController();
  bool isLoading = false;
  int pageNumber = 1;
  List<ProductModel> listProduct = [];
  @override
  void initState() {
    super.initState();
    _LoadData();
    _scrollController.addListener(_scrollListener);
  }

  Future<List<ProductModel>> _LoadData() async {
    ProductRepository productRepository = ProductRepository();
    listProduct = await productRepository.getListByID(
        "",
        PagingRequestModel(
            id: 0, pageNumber: pageNumber, pageSize: AppSetting.pageSize()));
    return listProduct;
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    pageNumber++;
    var listProductAdd = await _LoadData();

    if (isLoading) return;
    setState(() => isLoading = true);

    setState(() {
      listProductAdd.forEach((product) {
        listProduct.add(product);
      });
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProductModel>(
      converter: (store) => ProductModel(),
      builder: (context, vm) {
        return Scaffold(
          body: SafeArea(
              minimum: EdgeInsets.only(top: 24.0),
              child: //Text("")

                  RefreshIndicator(
                onRefresh: () async {},
                child: Column(
                  children: [
                    // Padding(
                    //   padding: Space.h1!,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       GestureDetector(
                    //           onTap: () {
                    //             // Navigator.of(context)
                    //             //     .pushNamed(AppRouter.search);
                    //           },
                    //           child: const Icon(Icons.search)),
                    //       GestureDetector(
                    //         onTap: () {
                    //          // Navigator.of(context).pushNamed(AppRouter.cart);
                    //         },
                    //         child: SvgPicture.asset(
                    //           AppAssets.Cart,
                    //           color: AppColors.CommonCyan,
                    //           height: AppDimensions.normalize(10),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    AppSpace.Height20(),
                    Container(
                      color: Colors.pinkAccent,
                      height: 25.0,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                // final sortOrder =
                                //     await showSortingOptions(context);
                                // if (sortOrder != null) {
                                //   setState(() {});
                                //   // Dispatch SortProducts event with the selected sorting order
                                //   context
                                //       .read<ProductBloc>()
                                //       .add(SortProducts(sortOrder: sortOrder));
                                // }
                              },
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppAsset.SortIcon),
                                  // selectedSortOrder == null
                                  //     ? const SizedBox.shrink()
                                  //     : BlackDot(),
                                  AppSpace.Height20(),
                                  Text("Sort by",
                                      style:
                                          TextStyle(color: Colors.pinkAccent))
                                ],
                              ),
                            ),
                            Container(
                              width: 1,
                              margin: EdgeInsets.all(8),
                              color: Colors.grey.shade400,
                            ),
                            GestureDetector(
                              onTap: () {
                                // Navigator.of(context)
                                //     .pushNamed(AppRouter.filter);
                              },
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppAsset.FilterIcon),
                                  // context
                                  //             .read<FilterCubit>()
                                  //             .getFiltersCount() !=
                                  //         0
                                  //     ? BlackDot()
                                  //     : const SizedBox.shrink(),
                                  AppSpace.Height20(),
                                  Text("Filter",
                                      style:
                                          TextStyle(color: Colors.pinkAccent))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    AppSpace.Height20(),
                    Expanded(
                      child: GridView.builder(
                        padding: EdgeInsets.all(8),
                        itemCount: listProduct.length,
                        controller: _scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.55,
                          crossAxisSpacing: 6,
                        ),
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          // if (state.products.length > index) {
                          //   return ProductlistWidget(
                          //     product: state.products[index],
                          //   );
                          // }
                          return ProductlistWidget(
                              productModel: listProduct[index]);
                        },
                      ),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
