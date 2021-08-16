import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EmissionsInternetWidget extends StatefulWidget {
  EmissionsInternetWidget({Key key}) : super(key: key);

  @override
  _EmissionsInternetWidgetState createState() =>
      _EmissionsInternetWidgetState();
}

class _EmissionsInternetWidgetState extends State<EmissionsInternetWidget> {
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
                      'Internet Emissions',
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
                      'Shopping, Searching, Reading, Browsing,  etc.',
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
                      'An online search is estimated to emit about 0.2 grams of CO2e. How many searches do you do every day..\\n\\nThe internet is responsible for around 1 billion tonnes of greenhouse gas emissions per year, according to studies. That’s about 2% of total emissions worldwide. The impact of internet usage on the climate is comparable to the aviation industry, which is responsible for 2% of CO2 emissions worldwide.\\n\\nThe carbon footprint of the internet comes from a few different sources. First of all, there’s the devices you use to actually access the internet. Your laptop, smartphone, TV, and any other connected device has a carbon footprint. That comes both from the manufacturing of your device, and the electricity you use to power it. Then there’s the infrastructure around the world that stores our information and keeps us connected. The many satellites, cables, and data centres that make up the internet (and the electricity used to power them) have a CO2 footprint of their own.\\n\\nThe carbon footprint of each individual action we take online is small. But with approximately half the world’s population (4.1 billion people) being internet users, the overall effect can be pretty huge.\\n',
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
