import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurveyQ6Widget extends StatefulWidget {
  SurveyQ6Widget({Key key}) : super(key: key);

  @override
  _SurveyQ6WidgetState createState() => _SurveyQ6WidgetState();
}

class _SurveyQ6WidgetState extends State<SurveyQ6Widget> {
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Image.asset(
                      'assets/images/Logo@3x.png',
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Icon(
                      Icons.email_outlined,
                      color: FlutterFlowTheme.tertiaryColor,
                      size: 27,
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
                      'How much time do you spend on emails?',
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
                    padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                    child: Text(
                      'Microsoft Outlook, Gmail, Yahoo, etc.',
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text:
                    'None                                                          ',
                options: FFButtonOptions(
                  width: 320,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'A little                                 Up to 1hr/day',
                options: FFButtonOptions(
                  width: 320,
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
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'A fair bit                                 1 - 2hrs/day',
                options: FFButtonOptions(
                  width: 320,
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
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'A lot                         More than 2hrs/day ',
              options: FFButtonOptions(
                width: 320,
                height: 55,
                color: FlutterFlowTheme.customColor2,
                textStyle: FlutterFlowTheme.subtitle2.override(
                  fontFamily: 'Open Sans Condensed',
                  color: FlutterFlowTheme.tertiaryColor,
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
