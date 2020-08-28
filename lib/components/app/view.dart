import 'package:bus_rental_keolis/components/app/viewmodel.dart';
import 'package:bus_rental_keolis/components/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class View<T extends ViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T value, Widget child)
  builderView;
  final List<dynamic> args;

  View({this.builderView, this.args});

  @override
  _ViewModelLifecycle<T> createState() => _ViewModelLifecycle<T>();
}

class _ViewModelLifecycle<VM extends ViewModel> extends State<View<VM>> {
  VM _viewModel;

  @override
  void initState() {
    if (_viewModel != null && _viewModel.mustReload) {
      _viewModel.load(context, widget.args);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_viewModel == null) {
      _viewModel = ViewModelBuilder.instanciate(VM);
      _viewModel.load(context, widget.args);
    }
    return ChangeNotifierProvider<VM>(
      create: (context) => _viewModel,
      child: Consumer<VM>(
        builder: widget.builderView,
      ),
    );
  }
}