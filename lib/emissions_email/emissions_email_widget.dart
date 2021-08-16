import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EmissionsEmailWidget extends StatefulWidget {
  EmissionsEmailWidget({Key key}) : super(key: key);

  @override
  _EmissionsEmailWidgetState createState() => _EmissionsEmailWidgetState();
}

class _EmissionsEmailWidgetState extends State<EmissionsEmailWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavBarPage(initialPage: 'MyCo2'),
              ),
            );
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.customColor5,
            size: 32,
          ),
        ),
        title: Text(
          'My CO2',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Open Sans Condensed',
            color: FlutterFlowTheme.customColor5,
            fontSize: 30,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.customColor2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://quickchart.io/chart/render/zm-f6ee1d00-4ba0-424f-ae40-7b4de8518393',
                    width: 330,
                    height: 230,
                    fit: BoxFit.contain,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        'Email Emissions',
                        style: FlutterFlowTheme.title2.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.customColor4,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 4, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        'Microsoft Outlook, Gmail, Yahoo, etc.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.customColor5,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        'Each email you send is estimated to rack up an average of 1g of CO2e. That’s about the same weight as a teaspoon of sugar, or a paperclip.\\n\\nIt doesn’t sound like much – until you think about how many emails you actually send and receive. According to research, we send an average of 64 unnecessary emails per day. \\n\\nThe footprint of an email also varies dramatically, from 0.3g CO2e for a spam email to 4g CO2e for a regular email and 50g CO2e for one with a photo or hefty attachment.\\n\\nBased on the previous study figures, some estimates report that individuals with their own emails will generate 1.6kg CO2e in a single day. \\n',
                        style: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 24),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'Actions'),
                      ),
                    );
                  },
                  text: 'Discover ways to reduce your footprint',
                  options: FFButtonOptions(
                    width: 300,
                    height: 60,
                    color: FlutterFlowTheme.customColor5,
                    textStyle: FlutterFlowTheme.title3.override(
                      fontFamily: 'Open Sans Condensed',
                      color: FlutterFlowTheme.tertiaryColor,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
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
