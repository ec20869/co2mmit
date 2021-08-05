import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../register/register_widget.dart';
import '../survey_social/survey_social_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SurveyMultiPageWidget extends StatefulWidget {
  SurveyMultiPageWidget({Key key}) : super(key: key);

  @override
  _SurveyMultiPageWidgetState createState() => _SurveyMultiPageWidgetState();
}

class _SurveyMultiPageWidgetState extends State<SurveyMultiPageWidget> {
  final pageViewController = PageController();
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
        List<SurveyRecord> surveyMultiPageSurveyRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final surveyMultiPageSurveyRecord =
            surveyMultiPageSurveyRecordList.first;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.customColor2,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                              child: PageView(
                                controller: pageViewController,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Align(
                                      alignment: Alignment(0, 0),
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
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 20, 0, 20),
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
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 20),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.thumbsUp,
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      20, 0, 20, 10),
                                                  child: Text(
                                                    'How much time do you spend on social media?',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .title1
                                                        .override(
                                                      fontFamily:
                                                          'Open Sans Condensed',
                                                      color: FlutterFlowTheme
                                                          .customColor4,
                                                      fontSize: 33,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                  padding: EdgeInsets.fromLTRB(
                                                      25, 0, 25, 20),
                                                  child: Text(
                                                    'Instagram, Facebook, TikTok, Twitter, \\n LinkedIn, WhatsApp, Messenger, etc.',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme
                                                        .bodyText1
                                                        .override(
                                                      fontFamily:
                                                          'Open Sans Condensed',
                                                      color: FlutterFlowTheme
                                                          .customColor5,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 15),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final surveyCreateData =
                                                    createSurveyRecordData(
                                                  answer1: 0,
                                                );
                                                await SurveyRecord.collection
                                                    .doc()
                                                    .set(surveyCreateData);
                                              },
                                              text:
                                                  'None                                                          ',
                                              options: FFButtonOptions(
                                                width: 320,
                                                height: 55,
                                                color: FlutterFlowTheme
                                                    .customColor2,
                                                textStyle: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .customColor1,
                                                  width: 1,
                                                ),
                                                borderRadius: 5,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 15),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final surveyCreateData =
                                                    createSurveyRecordData(
                                                  answer2: 2,
                                                );
                                                await SurveyRecord.collection
                                                    .doc()
                                                    .set(surveyCreateData);
                                              },
                                              text:
                                                  'A little                                 Up to 1hr/day',
                                              options: FFButtonOptions(
                                                width: 320,
                                                height: 55,
                                                color: FlutterFlowTheme
                                                    .customColor2,
                                                textStyle: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .customColor1,
                                                  width: 1,
                                                ),
                                                borderRadius: 5,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 0, 15),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                final surveyCreateData =
                                                    createSurveyRecordData(
                                                  answer3: 3,
                                                );
                                                await SurveyRecord.collection
                                                    .doc()
                                                    .set(surveyCreateData);
                                              },
                                              text:
                                                  'A fair bit                                 1 - 2hrs/day',
                                              options: FFButtonOptions(
                                                width: 320,
                                                height: 55,
                                                color: FlutterFlowTheme
                                                    .customColor2,
                                                textStyle: FlutterFlowTheme
                                                    .subtitle2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                ),
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme
                                                      .customColor1,
                                                  width: 1,
                                                ),
                                                borderRadius: 5,
                                              ),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer4: 4,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A lot                         More than 2hrs/day ',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 20, 0, 20),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 20),
                                                child: Icon(
                                                  Icons.ondemand_video,
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 0, 25, 10),
                                                child: Text(
                                                  'How much time do you spend streaming video?',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor4,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 0, 25, 20),
                                                child: Text(
                                                  '       Netflix, Hulu, Amazon Prime, Disney Plus, etc.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor5,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer5: 5,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'None                                                          ',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer6: 6,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A little                                 Up to 1hr/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer7: 7,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A fair bit                                 1 - 2hrs/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            final surveyCreateData =
                                                createSurveyRecordData(
                                              answer8: 8,
                                            );
                                            await SurveyRecord.collection
                                                .doc()
                                                .set(surveyCreateData);
                                          },
                                          text:
                                              'A lot                         More than 2hrs/day ',
                                          options: FFButtonOptions(
                                            width: 320,
                                            height: 55,
                                            color:
                                                FlutterFlowTheme.customColor2,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 20,
                                            ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.customColor1,
                                              width: 1,
                                            ),
                                            borderRadius: 5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 20, 0, 20),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 20),
                                                child: FaIcon(
                                                  FontAwesomeIcons.gamepad,
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 10),
                                                child: Text(
                                                  'How much time do you spend on gaming?',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor4,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 0, 25, 20),
                                                child: Text(
                                                  'Xbox, Playstation, GeForce Now, Vortex,  etc.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor5,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer9: 9,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'None                                                          ',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer10: 10,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A little                                 Up to 1hr/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer11: 11,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A fair bit                                 1 - 2hrs/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            final surveyCreateData =
                                                createSurveyRecordData(
                                              answer12: 12,
                                            );
                                            await SurveyRecord.collection
                                                .doc()
                                                .set(surveyCreateData);
                                          },
                                          text:
                                              'A lot                         More than 2hrs/day ',
                                          options: FFButtonOptions(
                                            width: 320,
                                            height: 55,
                                            color:
                                                FlutterFlowTheme.customColor2,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 20,
                                            ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.customColor1,
                                              width: 1,
                                            ),
                                            borderRadius: 5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 20, 0, 20),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 20),
                                                child: FaIcon(
                                                  FontAwesomeIcons.search,
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 10),
                                                child: Text(
                                                  'How much time do you spend on the internet?',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor4,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 0, 25, 20),
                                                child: Text(
                                                  'Shopping, Searching, Reading, Browsing,  etc.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor5,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer13: 13,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'None                                                          ',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer14: 14,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A little                                 Up to 1hr/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer15: 15,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A fair bit                                 1 - 2hrs/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            final surveyCreateData =
                                                createSurveyRecordData(
                                              answer16: 16,
                                            );
                                            await SurveyRecord.collection
                                                .doc()
                                                .set(surveyCreateData);
                                          },
                                          text:
                                              'A lot                         More than 2hrs/day ',
                                          options: FFButtonOptions(
                                            width: 320,
                                            height: 55,
                                            color:
                                                FlutterFlowTheme.customColor2,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 20,
                                            ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.customColor1,
                                              width: 1,
                                            ),
                                            borderRadius: 5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 20, 0, 20),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 20),
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .headphonesAlt,
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 10),
                                                child: Text(
                                                  'How much time do you spend streaming music or podcasts?',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor4,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 0, 25, 20),
                                                child: Text(
                                                  'Spotify,  Podcast stores, iTunes, Google Play, SoundCloud, etc.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor5,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer17: 17,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'None                                                          ',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer18: 18,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A little                                 Up to 1hr/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer19: 19,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A fair bit                                 1 - 2hrs/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            final surveyCreateData =
                                                createSurveyRecordData(
                                              answer20: 20,
                                            );
                                            await SurveyRecord.collection
                                                .doc()
                                                .set(surveyCreateData);
                                          },
                                          text:
                                              'A lot                         More than 2hrs/day ',
                                          options: FFButtonOptions(
                                            width: 320,
                                            height: 55,
                                            color:
                                                FlutterFlowTheme.customColor2,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 20,
                                            ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.customColor1,
                                              width: 1,
                                            ),
                                            borderRadius: 5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 20, 0, 20),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 20),
                                                child: Icon(
                                                  Icons.email_outlined,
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 10),
                                                child: Text(
                                                  'How much time do you spend on emails?',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor4,
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
                                                padding: EdgeInsets.fromLTRB(
                                                    25, 0, 25, 20),
                                                child: Text(
                                                  'Microsoft Outlook, Gmail, Yahoo, etc.',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme
                                                      .bodyText1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor5,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer21: 21,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'None                                                          ',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer22: 22,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A little                                 Up to 1hr/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              final surveyCreateData =
                                                  createSurveyRecordData(
                                                answer23: 23,
                                              );
                                              await SurveyRecord.collection
                                                  .doc()
                                                  .set(surveyCreateData);
                                            },
                                            text:
                                                'A fair bit                                 1 - 2hrs/day',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
                                                width: 1,
                                              ),
                                              borderRadius: 5,
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            final surveyCreateData =
                                                createSurveyRecordData(
                                              answer24: 24,
                                            );
                                            await SurveyRecord.collection
                                                .doc()
                                                .set(surveyCreateData);
                                          },
                                          text:
                                              'A lot                         More than 2hrs/day ',
                                          options: FFButtonOptions(
                                            width: 320,
                                            height: 55,
                                            color:
                                                FlutterFlowTheme.customColor2,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans Condensed',
                                              color: FlutterFlowTheme
                                                  .tertiaryColor,
                                              fontSize: 20,
                                            ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.customColor1,
                                              width: 1,
                                            ),
                                            borderRadius: 5,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.customColor2,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 20, 0, 20),
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
                                                padding: EdgeInsets.fromLTRB(
                                                    20, 0, 20, 10),
                                                child: Text(
                                                  'Your estimated digital carbon footprint is',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.title1
                                                      .override(
                                                    fontFamily:
                                                        'Open Sans Condensed',
                                                    color: FlutterFlowTheme
                                                        .customColor4,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                            'Open Sans Condensed',
                                                        color: FlutterFlowTheme
                                                            .customColor5,
                                                        fontSize: 50,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 0, 0, 0),
                                                      child: Text(
                                                        'KG',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                              'Open Sans Condensed',
                                                          color:
                                                              FlutterFlowTheme
                                                                  .customColor5,
                                                          fontSize: 50,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                                'OF CO2 EVERY YEAR',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme
                                                    .bodyText1
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .customColor5,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 20),
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
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 15, 0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.thumbsUp,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      size: 24,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 15, 0),
                                                    child: Icon(
                                                      Icons.ondemand_video,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      size: 24,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 15, 0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.gamepad,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      size: 24,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 15, 0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons.search,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
                                                      size: 24,
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 15, 0),
                                                    child: FaIcon(
                                                      FontAwesomeIcons
                                                          .headphones,
                                                      color: FlutterFlowTheme
                                                          .tertiaryColor,
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
                                                    color: FlutterFlowTheme
                                                        .tertiaryColor,
                                                    size: 24,
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 15),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegisterWidget(),
                                                ),
                                              );
                                            },
                                            text:
                                                'Take action now to reduce your footprint',
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 55,
                                              color:
                                                  FlutterFlowTheme.customColor2,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                              borderSide: BorderSide(
                                                color: FlutterFlowTheme
                                                    .customColor1,
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
                                                builder: (context) =>
                                                    SurveySocialWidget(),
                                              ),
                                            );
                                          },
                                          text: 'Recalculate',
                                          options: FFButtonOptions(
                                            width: 320,
                                            height: 55,
                                            color:
                                                FlutterFlowTheme.customColor2,
                                            textStyle: FlutterFlowTheme
                                                .subtitle2
                                                .override(
                                              fontFamily: 'Open Sans Condensed',
                                              color:
                                                  FlutterFlowTheme.customColor5,
                                              fontSize: 20,
                                            ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.customColor1,
                                              width: 1,
                                            ),
                                            borderRadius: 5,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.05, 0.8),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: SmoothPageIndicator(
                                  controller: pageViewController,
                                  count: 7,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 10,
                                    dotHeight: 10,
                                    dotColor: FlutterFlowTheme.tertiaryColor,
                                    activeDotColor:
                                        FlutterFlowTheme.customColor5,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
