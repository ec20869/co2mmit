import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../survey_welcome/survey_welcome_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment(0, -0.94),
                      child: Image.asset(
                        'assets/images/Logo@3x.png',
                        width: 350,
                        height: 100,
                        fit: BoxFit.cover,
                      ).animated([animationsMap['imageOnPageLoadAnimation']]),
                    ),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment(0, 0),
                            child: AutoSizeText(
                              'DIGITAL CARBON FOOTPRINT TRACKER',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.title2.override(
                                fontFamily: 'Open Sans Condensed',
                                color: FlutterFlowTheme.customColor6,
                                fontSize: 19,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SurveyWelcomeWidget(),
                                  ),
                                );
                              },
                              text: 'ENTER',
                              options: FFButtonOptions(
                                width: 300,
                                height: 50,
                                color: FlutterFlowTheme.customColor2,
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans Condensed',
                                  color: FlutterFlowTheme.customColor5,
                                  fontSize: 18,
                                ),
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.customColor4,
                                  width: 1,
                                ),
                                borderRadius: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ).animated([animationsMap['stackOnPageLoadAnimation']]),
      ),
    );
  }
}
