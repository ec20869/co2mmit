import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../survey_multi_page/survey_multi_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SplashscreenWidget extends StatefulWidget {
  SplashscreenWidget({Key key}) : super(key: key);

  @override
  _SplashscreenWidgetState createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'stackOnPageLoadAnimation': AnimationInfo(
      curve: Curves.easeIn,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      fadeIn: true,
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    startAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

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
                  ).animated([animationsMap['imageOnPageLoadAnimation']]),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurveyMultiPageWidget(),
                        ),
                      );
                    },
                    child: Text(
                      'DIGITAL CARBON FOOTPRINT TRACKER',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.title2.override(
                        fontFamily: 'Open Sans Condensed',
                        color: FlutterFlowTheme.customColor6,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ).animated([animationsMap['stackOnPageLoadAnimation']]),
      ),
    );
  }
}
