import 'package:flutter/material.dart';

class CustomListBuilderSeparator extends StatelessWidget
{
  const CustomListBuilderSeparator(
    this.listPadding,
    this.separatorWidget,
    this.listReturnedWidget, 
    this.listItemCount,
    {super.key}
  );

  final EdgeInsets listPadding;
  final Widget Function(BuildContext, int) separatorWidget;
  final Widget? Function(BuildContext, int) listReturnedWidget;
  final int listItemCount;
  
  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      
      shrinkWrap: true,
      padding: listPadding,
      itemCount: listItemCount,
      itemBuilder: (context, index) => listReturnedWidget(context, index),
      separatorBuilder: (context, index) => separatorWidget(context, index),
    );
  }
}
