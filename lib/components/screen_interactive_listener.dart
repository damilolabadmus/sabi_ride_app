

import 'package:flutter/cupertino.dart';
// import 'package:quiver/async.dart';

class ScreenInteractionListener extends StatefulWidget {
  final Widget child;
  final int timeout;
  final String route;

  const ScreenInteractionListener(
      {Key? key,
        required this.child,
        required this.timeout,
        this.route = '/WelcomePage'})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ScreenInteractionListenerState();
  }
}

class _ScreenInteractionListenerState extends State<ScreenInteractionListener>
    with WidgetsBindingObserver {
  // late CountdownTimer countdownTimer;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}
