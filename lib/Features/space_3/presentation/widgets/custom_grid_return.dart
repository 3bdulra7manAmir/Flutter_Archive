import 'package:flutter/widgets.dart';

class GridViewReturnedWidget extends StatelessWidget
{
  const GridViewReturnedWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children:
      [
        Text(text),
      ],
    );
  }
}