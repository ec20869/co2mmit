import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../survey_results/survey_results_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SurveyEmailWidget extends StatefulWidget {
  SurveyEmailWidget({
    Key key,
    this.expr,
  }) : super(key: key);

  final String expr;

  @override
  _SurveyEmailWidgetState createState() => _SurveyEmailWidgetState();
}

class _SurveyEmailWidgetState extends State<SurveyEmailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<SurveyRecord>>(
      stream: querySurveyRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: LinearProgressIndicator(
              color: FlutterFlowTheme.customColor4,
            ),
          );
        }
        List<SurveyRecord> surveyEmailSurveyRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final surveyEmailSurveyRecord = surveyEmailSurveyRecordList.first;
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
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                        child: AutoSizeText(
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
                        child: AutoSizeText(
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
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurveyResultsWidget(
                            expr: '0%2B${widget.expr}',
                          ),
                        ),
                      );
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
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurveyResultsWidget(
                            expr: '1.022%2B${widget.expr}',
                          ),
                        ),
                      );
                    },
                    text:
                        'A little                                 Up to 1hr/day',
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
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurveyResultsWidget(
                            expr: '2.044%2B${widget.expr}',
                          ),
                        ),
                      );
                    },
                    text:
                        'A fair bit                                 1 - 2hrs/day',
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
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SurveyResultsWidget(
                            expr: '3.066%2B${widget.expr}',
                          ),
                        ),
                      );
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
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
