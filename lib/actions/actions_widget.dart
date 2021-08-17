import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionsWidget extends StatefulWidget {
  ActionsWidget({Key key}) : super(key: key);

  @override
  _ActionsWidgetState createState() => _ActionsWidgetState();
}

class _ActionsWidgetState extends State<ActionsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        title: Text(
          'Actions',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans Condensed',
            color: FlutterFlowTheme.customColor5,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(
              Icons.add_rounded,
              color: FlutterFlowTheme.customColor5,
              size: 24,
            ),
          )
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.customColor2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 12, 0, 12),
                            child: Text(
                              'Recommended for you...',
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Open Sans Condensed',
                                color: FlutterFlowTheme.customColor4,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.customColor5,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Video Emissions',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Watch Your Video Streaming',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Turn off auto-play. \\nClose tabs not in use to prevent videos playing in the background\\nAvoid using videos when you only need audio\\nReduce Ultra HD video to lower quality\\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
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
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.customColor5,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Email Emissions',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Change Your Email Habits',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Power down your computer if away for more than 2hrs\\nReduce number of emails sent per day\\nClean out your inbox regularly\\nUnsubscribe from emails\\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
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
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.customColor5,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Internet Emissions',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Choose a Conscious Cloud',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Consider storing your data on a green cloud provider\\nMove to a eco-conscious network provider\\nGo direct to website directly rather then using a search engine\\nUse an alternative eco-friendly search engine\\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 12, 0, 12),
                            child: Text(
                              'More Actions',
                              style: FlutterFlowTheme.bodyText2.override(
                                fontFamily: 'Open Sans Condensed',
                                color: FlutterFlowTheme.customColor4,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
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
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.customColor5,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Internet Emissions',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Kill the Vampire Power',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Shut down your devices overnight \\nSet your devices to sleep mode after a set time when inactive\\nDim your devices to conserve energy use\\nHold onto devices for as long as possible and avoid upgrades\\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
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
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.customColor5,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Gaming Emissions',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Make Your Playground Eco',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Switch to a greener gaming console\\nUse games that have eco-conscious design\\nTurn off equipment when not in use\\nReduce weekly play time\\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
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
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.customColor5,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Audio Emissions',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFDBE2E7),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 4, 0, 0),
                                            child: AutoSizeText(
                                              'Listen to Your Conscious',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.subtitle1
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .customColor4,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 4, 12, 4),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText(
                                              'Download music or podcast instead of streaming\\nBuy the physical copies (vinyl, cassettes) instead of online\\nChange your autoplay settings\\nAvoid using videos when you only need audio\\n',
                                              textAlign: TextAlign.start,
                                              style: FlutterFlowTheme.bodyText2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
