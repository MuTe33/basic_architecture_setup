import 'package:basic_architecture_setup/feature/testpage/test_page_view_model.dart';
import 'package:basic_architecture_setup/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  TestPageViewModel model;

  @override
  void initState() {
    super.initState();
    model = locator<TestPageViewModel>();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      model.loadUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TestPageViewModel>(
      create: (context) => model,
      child: Consumer<TestPageViewModel>(
        builder: (BuildContext context, TestPageViewModel model, _) {
          if (model.isLoading()) {
            return Center(child: CircularProgressIndicator());
          }
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    model?.allUsers?.isEmpty != null
                        ? Center(
                            child: Text(model.allUsers.first.name),
                          )
                        : Center(child: Text('Empty Users')),
                  ],
                ),
                Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
