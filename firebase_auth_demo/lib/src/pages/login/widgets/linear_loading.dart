import 'package:flutter/material.dart';

class LinearLoading extends StatelessWidget implements PreferredSizeWidget {
  final bool isLoading;

  const LinearLoading({Key key, this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext contextI) => isLoading
      ? LinearProgressIndicator(
          minHeight: 2,
          backgroundColor: Colors.grey[900],
        )
      : Container();

  @override
  Size get preferredSize => Size.fromHeight(4);
}
