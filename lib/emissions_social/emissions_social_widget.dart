import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EmissionsSocialWidget extends StatefulWidget {
  EmissionsSocialWidget({Key key}) : super(key: key);

  @override
  _EmissionsSocialWidgetState createState() => _EmissionsSocialWidgetState();
}

class _EmissionsSocialWidgetState extends State<EmissionsSocialWidget> {
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
          'My  CO2',
          style: FlutterFlowTheme.title2.override(
            fontFamily: 'Open Sans Condensed',
            color: FlutterFlowTheme.customColor5,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.customColor2,
      body: SingleChildScrollView(
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
                      'Social Emissions',
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
                      'Instagram, Facebook, TikTok, Twitter, WhatsApp, Messenger, etc.',
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
                      'Have you ever wondered what the environmental cost of a post, a story, watching a live or Instagram feed is?\\n\\nThe most energy-intensive activity on social channels is scrolling on a news feed (1.549g CO2e). One minute of scrolling is roughly the equivalent of driving 13 metres in a vehicle. \\n\\nPhotos, videos, and ads consume the most energy in terms of data exchanged (14.63 MB for one minute). One minute of uploading photos is estimated at 0.154g CO2e.\\n\\nIn 2020, Youtube (0.66g CO2e) ranked highest channel for emissions, closely followed by Facebook (0.73g CO2e) and LinkedIn (0.75g CO2e). The four apps TikTok, Reddit, Pinterest and Snapchat were above the average carbon impact (2.1g CO2e) observed. In fact, the TikTok news feed has a carbon impact about 7.7 times greater than that of Youtube.\\n',
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
                      builder: (context) => NavBarPage(initialPage: 'Actions'),
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
    );
  }
}
