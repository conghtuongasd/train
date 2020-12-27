import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class CTimeLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(color: Colors.white),
      builder: TimelineTileBuilder.connectedFromStyle(
        connectionDirection: ConnectionDirection.before,
        connectorStyleBuilder: (context, index) {
          return ConnectorStyle.dashedLine;
        },
        indicatorStyleBuilder: (context, index) =>
            (index == 0 ? IndicatorStyle.outlined : IndicatorStyle.dot),
        firstConnectorStyle: ConnectorStyle.transparent,
        lastConnectorStyle: ConnectorStyle.transparent,
        itemExtent: 80.0,
        itemCount: 2,
      ),
    );
  }
}
