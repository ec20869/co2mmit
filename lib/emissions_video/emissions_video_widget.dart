import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class EmissionsVideoWidget extends StatefulWidget {
  EmissionsVideoWidget({Key key}) : super(key: key);

  @override
  _EmissionsVideoWidgetState createState() => _EmissionsVideoWidgetState();
}

class _EmissionsVideoWidgetState extends State<EmissionsVideoWidget> {
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
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Image.network(
                    'https://quickchart.io/chart/render/zm-f6ee1d00-4ba0-424f-ae40-7b4de8518393',
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 230,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Streaming Video Emissions',
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
                    child: Text(
                      'YouTube, Netflix, Hulu, Amazon Prime, Disney Plus, Zoom, Microsoft Teams, etc.',
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
                    child: Text(
                      'The average carbon footprint in Europe per hour of video streaming is approximately 55gCO2e, equivalent to boiling an average electric kettle three times.\\n\\nThe viewing device is typically responsible for the largest part (more than 50%) of the overall carbon footprint. For example, the footprint (related specifically to the energy use of the viewing device) of watching on a 50-inch TV is shown to be roughly 4.5 times that of watching on a laptop, and roughly 90 times that of watching on a smartphone.\\n\\nIn the individual level—streaming video over fiber optic cables results in the lowest amount of CO2 emissions, at the rate of two grams per hour. On the flip side, streaming over next-generation mobile technology, better known as 5G, would result in carbon dioxide emissions of five grams per hour, while using copper cables produces twice that amount, and 3G mobile technology results in a hefty 90 grams of CO2 per hour.\\n',
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
