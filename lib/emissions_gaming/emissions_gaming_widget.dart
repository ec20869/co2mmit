import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmissionsGamingWidget extends StatefulWidget {
  EmissionsGamingWidget({Key key}) : super(key: key);

  @override
  _EmissionsGamingWidgetState createState() => _EmissionsGamingWidgetState();
}

class _EmissionsGamingWidgetState extends State<EmissionsGamingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        leading: Icon(
          Icons.chevron_left_rounded,
          color: FlutterFlowTheme.customColor5,
          size: 32,
        ),
        title: Text(
          'My Emissions',
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
                      'Gaming Emissions',
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
                      'Xbox, Playstation, GeForce Now, Vortex,  etc.',
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
                      'The average gamer will use between five and 375 kWh per year on their gaming habit, depending on their console of choice. (The Playstation 4 and Xbox One generate similar energy demands, while the Nintendo Switch requires considerably less.) These figures will vary, obviously, depending on usage and electrical costs in a person\'s region. Heavy gamers will generate considerably more — 1,100 kWh per year or more. That is well over the average electrical cost for other household appliances. An energy-efficient washing machine will account for about 318 kWh each year, \\n\\nPlayStation reveals the results of an academic study showing that on average, PlayStation 4 downloads result in carbon emissions of 0.047kg of CO2 emitted per hour, with disc gaming resulting in 0.055kg of CO2 emitted per hour. This is half of the amount of emissions on average for a typical PC game, the report said, and around 50 times less than a trip to the movies -- mainly due to the travel required. Cloud game streaming emits an estimated 0.149kg of CO2 per hour -- however, this can vary considerably depending on how long the game is played.\\n',
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
                onPressed: () {
                  print('ButtonPrimary pressed ...');
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
