import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../survey_multi_page/survey_multi_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SurveyWelcomeWidget extends StatefulWidget {
  SurveyWelcomeWidget({Key key}) : super(key: key);

  @override
  _SurveyWelcomeWidgetState createState() => _SurveyWelcomeWidgetState();
}

class _SurveyWelcomeWidgetState extends State<SurveyWelcomeWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.customColor2,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment(0, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image.asset(
                        'assets/images/Logo@3x.png',
                        width: 200,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Text(
                      'Welcome to Co2mmit, \\nyour new digital carbon footprint calculator',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.title1.override(
                        fontFamily: 'Open Sans Condensed',
                        color: FlutterFlowTheme.customColor4,
                        fontSize: 33,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 20, 60, 40),
                    child: Text(
                      'To get started please complete a short questionnaire so we can measure your current digital carbon footprint',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans Condensed',
                        color: FlutterFlowTheme.customColor5,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
            FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurveyMultiPageWidget(),
                  ),
                );
              },
              text:
                  '   Start survey now                                         ',
              options: FFButtonOptions(
                width: 150,
                height: 55,
                color: FlutterFlowTheme.customColor2,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Open Sans Condensed',
                  color: Colors.white,
                  fontSize: 20,
                ),
                borderSide: BorderSide(
                  color: FlutterFlowTheme.customColor1,
                  width: 1,
                ),
                borderRadius: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
