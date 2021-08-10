import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurveyWelcomeWidget extends StatefulWidget {
  SurveyWelcomeWidget({Key key}) : super(key: key);

  @override
  _SurveyWelcomeWidgetState createState() => _SurveyWelcomeWidgetState();
}

class _SurveyWelcomeWidgetState extends State<SurveyWelcomeWidget> {
  SurveyRecord surveyresults;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
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
        List<UsersRecord> surveyWelcomeUsersRecordList = snapshot.data;
        // Customize what your widget looks like with no query results.
        if (snapshot.data.isEmpty) {
          return Container(
            height: 100,
            child: Center(
              child: Text('No results.'),
            ),
          );
        }
        final surveyWelcomeUsersRecord = surveyWelcomeUsersRecordList.first;
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
                          'Welcome to Co2mmit, your personal digital carbon tracker',
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
                          'To get started please complete our short survey on your digital habits',
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
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
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
                      List<UsersRecord> buttonUsersRecordList = snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        return Container(
                          height: 100,
                          child: Center(
                            child: Text('No results.'),
                          ),
                        );
                      }
                      final buttonUsersRecord = buttonUsersRecordList.first;
                      return FFButtonWidget(
                        onPressed: () async {
                          final surveyCreateData = createSurveyRecordData(
                            answer1: 0,
                            answer3: 0,
                            answer4: 0,
                            answer5: 0,
                            answer2: 0,
                            answer6: 0,
                            user: currentUserReference,
                          );
                          final surveyRecordReference =
                              SurveyRecord.collection.doc();
                          await surveyRecordReference.set(surveyCreateData);
                          surveyresults = SurveyRecord.getDocumentFromData(
                              surveyCreateData, surveyRecordReference);

                          setState(() {});
                        },
                        text:
                            'Start Survey Now                                                      ',
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
                      );
                    },
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
