import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashscreenWidget extends StatefulWidget {
  SplashscreenWidget({Key key}) : super(key: key);

  @override
  _SplashscreenWidgetState createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF121C41),
      body: SafeArea(
        child: Stack(
          alignment: Alignment(0, 0.050000000000000044),
          children: [
            Align(
              alignment: Alignment(0, -0.5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor2,
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: Alignment(0, -0.94),
                  child: Image.asset(
                    'assets/images/Logo@3x.png',
                    width: 2700,
                    height: 150,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DIGITAL CARBON FOOTPRINT TRACKER',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.title2.override(
                      fontFamily: 'Open Sans Condensed',
                      color: FlutterFlowTheme.customColor6,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
