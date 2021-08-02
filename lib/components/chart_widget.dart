import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartWidget extends StatefulWidget {
  ChartWidget({Key key}) : super(key: key);

  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://picsum.photos/seed/434/600',
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}
