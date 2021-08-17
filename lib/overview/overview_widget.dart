import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../measure_emissions/measure_emissions_widget.dart';
import '../survey_welcome/survey_welcome_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class OverviewWidget extends StatefulWidget {
  OverviewWidget({
    Key key,
    this.lastResult,
  }) : super(key: key);

  final String lastResult;

  @override
  _OverviewWidgetState createState() => _OverviewWidgetState();
}

class _OverviewWidgetState extends State<OverviewWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.customColor2,
      body: SafeArea(
        child: SingleChildScrollView(
          primary: false,
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Text(
                        'Your digital carbon footprint emissions comparison',
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
                      AutoSizeText(
                        '${widget.lastResult}t CO2e',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.customColor4,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 18, 0),
                        child: AutoSizeText(
                          '10.5t CO2e*',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: FlutterFlowTheme.customColor5,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AutoSizeText(
                        '6.7t CO2e*',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.customColor5,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
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
                    'https://quickchart.io/chart/render/zm-0c1913ab-e4d6-4f9d-a893-26e56d05f5ea',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'You',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: FlutterFlowTheme.customColor4,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 0, 40, 0),
                          child: Text(
                            'UK',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Open Sans Condensed',
                              color: FlutterFlowTheme.customColor5,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Global',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: FlutterFlowTheme.customColor5,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(60, 0, 50, 5),
                        child: AutoSizeText(
                          '* Average carbon footprint overall (inclusive of all emissions categories)',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: FlutterFlowTheme.customColor5,
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                          ),
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
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(60, 0, 50, 5),
                        child: AutoSizeText(
                          '* Average digital carbon footprint is 2.5t CO2e per annum',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Open Sans Condensed',
                            color: FlutterFlowTheme.customColor5,
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarPage(initialPage: 'MyCo2'),
                      ),
                    );
                  },
                  text: 'My CO2',
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
                text: 'Update your emissions',
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
              ),
              FFButtonWidget(
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MeasureEmissionsWidget(),
                    ),
                  );
                },
                text: 'How we calculate your emissions',
                options: FFButtonOptions(
                  width: 320,
                  height: 55,
                  color: FlutterFlowTheme.customColor2,
                  textStyle: FlutterFlowTheme.subtitle2.override(
                    fontFamily: 'Open Sans Condensed',
                    color: FlutterFlowTheme.customColor4,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.customColor2,
                    width: 1,
                  ),
                  borderRadius: 5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
