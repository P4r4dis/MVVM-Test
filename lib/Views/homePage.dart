import 'package:flutter/material.dart';
import 'package:my_test/ViewModels/homePageViewModel.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // you can uncomment this to get all batman movies when the page is loaded
    //Provider.of<HomePageViewModel>(context, listen: false).fetchMovies("batman");
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomePageViewModel>(context);

    return Scaffold(
        appBar: AppBar(title: Text("Movies")),
        body: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              // Container(
              //   padding: EdgeInsets.only(left: 10),
              //   decoration: BoxDecoration(
              //       color: Colors.grey,
              //       borderRadius: BorderRadius.circular(10)),
              //   child: TextField(
              //     controller: _controller,
              //     onSubmitted: (value) {
              //       if (value.isNotEmpty) {
              //         // vm.fetchMovies(value);
              //         _controller.clear();
              //       }
              //     },
              //     style: TextStyle(color: Colors.white),
              //     decoration: InputDecoration(
              //         hintText: "Search",
              //         hintStyle: TextStyle(color: Colors.white),
              //         border: InputBorder.none),
              //   ),
              // ),
              Expanded(child: Text(vm.title)),
            ])));
  }
}
