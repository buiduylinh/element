import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_learning/screen2/widget/MyAppBarView.dart';

class AsyncState {

}

class LoadingState extends AsyncState {

}

class ErrorState extends AsyncState {

}

class LoadedState extends AsyncState {

}

Stream<AsyncState> getData() async* {
  try {
    yield LoadingState();

//    await getData2();

    yield LoadedState();
  } catch (e) {
    yield ErrorState();
  }
}

class Screen5 extends StatelessWidget {
  List list = List();

  Widget _buildState(_, AsyncSnapshot<AsyncState> snapshot) {
    if (snapshot.hasError) return Text('Error');

    if (snapshot.data is LoadingState) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Text('abc');
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Colors.white,
      home: Scaffold(
        appBar: MyAppBarView(),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return StreamBuilder<AsyncState>(
              builder: _buildState,
            );
          },
        ),
      ),
    );
  }
}