import 'package:flutter/material.dart';
import '../text_widget/text_widget.dart';

class PageScaffoldWidget extends StatelessWidget {
  final Widget child;
  final String title;
  final bool centralize;
  final bool hideAppBar;
  final bool hideBackButton;

  const PageScaffoldWidget({
    Key key,
    this.child,
    this.title,
    this.centralize = false,
    this.hideAppBar = false,
    this.hideBackButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: hideAppBar
          ? null
          : AppBar(
              backgroundColor: Colors.transparent,
              leading: hideBackButton
                  ? null
                  : IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      onPressed: () {
                        // if (Modular.to.canPop()) Modular.to.pop();
                      },
                    ),
              elevation: 0,
              title: title == null ? null : TextWidget.appBarTitle(title),
            ),
      body: centralize
          ? Center(
              child: SingleChildScrollView(
                child: child,
              ),
            )
          : SingleChildScrollView(
              child: child,
            ),
    );
  }
}
