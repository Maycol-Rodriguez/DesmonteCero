import 'package:charts_flutter/flutter.dart' as charts;
import 'package:dvida/Place/ui/screens/subscriber_series.dart';
import 'package:flutter/material.dart';
import 'package:dvida/01theme/officialTheme.dart';

import 'subscriber_chart.dart';

class CreateGraph extends StatelessWidget {
  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "2008", 
      subscribers: 10000000, 
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue)
    ),
    SubscriberSeries(
      year: "2009", 
      subscribers: 11000000, 
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue)
    ),
    SubscriberSeries(
      year: "2010", 
      subscribers: 132500000, 
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue)
    ),
    SubscriberSeries(
      year: "2011", 
      subscribers: 32560000, 
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue)
    ),
    SubscriberSeries(
      year: "2012", 
      subscribers: 850000, 
      barColor: charts.ColorUtil.fromDartColor
      (Colors.blue)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
        child: SubscriberChart(
          data: data,
        ),
      );
    
  }
}
