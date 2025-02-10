import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jayecommerce/core/redux/state/state.dart';
import 'package:jayecommerce/data/model/product_model.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ProductModel>(
      converter: (store) => ProductModel(),
      builder: (context, vm) {
        return Text("");
      },
    );
  }
}
