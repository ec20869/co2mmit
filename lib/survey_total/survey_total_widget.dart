import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../register/register_widget.dart';
import '../survey_q1/survey_q1_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SurveyTotalWidget extends StatefulWidget {
  SurveyTotalWidget({Key key}) : super(key: key);

  @override
  _SurveyTotalWidgetState createState() => _SurveyTotalWidgetState();
}

class _SurveyTotalWidgetState extends State<SurveyTotalWidget> {
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
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Text(
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
                    Text(
                      '62.7 KG',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans Condensed',
                        color: FlutterFlowTheme.customColor5,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
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
                    'OF CO2 EVERY YEAR',
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
                      builder: (context) => RegisterWidget(),
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
                    builder: (context) => SurveyQ1Widget(),
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
  }
}
