import 'package:flutter/material.dart';

class ListBuilderSeparator extends StatelessWidget
{
  const ListBuilderSeparator(
    this.listPadding,
    this.listItemCount,
    this.separatorWidget,
    this.listReturnedWidget,
    {super.key}
    );

  final int listItemCount;
  final Widget Function(BuildContext, int) separatorWidget;
  final Widget? Function(BuildContext, int) listReturnedWidget;
  final EdgeInsets listPadding;

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
        shrinkWrap: true,
        padding: listPadding,
        itemCount: listItemCount,
        itemBuilder: listReturnedWidget,
        separatorBuilder: separatorWidget,
    );
  }
}