import 'package:flutter/material.dart';

class LoadingIWidget extends StatelessWidget {
  const LoadingIWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        child: Center(child: CircularProgressIndicator()));
  }
}
