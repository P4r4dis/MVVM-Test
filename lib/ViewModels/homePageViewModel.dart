import 'package:flutter/material.dart';

class HomePageViewModel extends ChangeNotifier {
  String get title {
    return "Trusted Service Providers";
  }

  List<TSPViewModel> myList = <TSPViewModel>[];
  TSPModel tsp = new TSPModel("toto", "tot2", "2");
  // tsp.name = "toto";
  // tsp.subname = "test";
  // tsp.add(TSPViewModel(model1))
  // myList.add(TSPViewModel({}))
}

class TSPModel {
  String name;
  String subName;
  String nbAccess;

  TSPModel(this.name, this.subName, this.nbAccess);
}

// A deplacer
class TSPViewModel {
  final TSPModel tsp;
  TSPViewModel({this.tsp});

  String get name {
    return this.tsp.name;
  }

  String get subName {
    return this.tsp.subName;
  }

  String get nbAccess {
    return this.tsp.nbAccess;
  }
}
