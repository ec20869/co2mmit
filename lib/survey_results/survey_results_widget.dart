import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../overview/overview_widget.dart';
import '../survey_welcome/survey_welcome_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class SurveyResultsWidget extends StatefulWidget {
  SurveyResultsWidget({
    Key key,
    this.expr,
  }) : super(key: key);

  final String expr;

  @override
  _SurveyResultsWidgetState createState() => _SurveyResultsWidgetState();
}

class _SurveyResultsWidgetState extends State<SurveyResultsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: getResultsCall(
        expr: widget.expr,
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
        final surveyResultsGetResultsResponse = snapshot.data;
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: AutoSizeText(
                          'Your estimated digital carbon footprint is',
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              getJsonField(
                                      surveyResultsGetResultsResponse, r'$')
                                  .toString(),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Open Sans Condensed',
                                color: FlutterFlowTheme.customColor5,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                'tons',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Open Sans Condensed',
                                  color: FlutterFlowTheme.customColor5,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'OF CO2e EVERY YEAR',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.customColor5,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                    width: 300,
                    height: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.network(
                          '',
                        ).image,
                      ),
                    ),
                    child: Image.network(
                      'https://quickchart.io/chart/render/zm-63536771-fab0-4b84-9a20-b7f12f481040',
                      width: 100,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: FaIcon(
                              FontAwesomeIcons.thumbsUp,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: Icon(
                              Icons.ondemand_video,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: FaIcon(
                              FontAwesomeIcons.gamepad,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: FaIcon(
                              FontAwesomeIcons.search,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                            child: FaIcon(
                              FontAwesomeIcons.headphones,
                              color: FlutterFlowTheme.tertiaryColor,
                              size: 24,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.email_outlined,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 24,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OverviewWidget(
                            lastResult: valueOrDefault<String>(
                              getJsonField(
                                      surveyResultsGetResultsResponse, r'$')
                                  .toString(),
                              '0',
                            ),
                          ),
                        ),
                      );
                    },
                    text: 'Take action now to reduce your footprint',
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
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SurveyWelcomeWidget(),
                      ),
                    );
                  },
                  text: 'Recalculate',
                  options: FFButtonOptions(
                    width: 320,
                    height: 55,
                    color: FlutterFlowTheme.customColor2,
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Open Sans Condensed',
                      color: FlutterFlowTheme.customColor5,
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
      },
    );
  }
}
