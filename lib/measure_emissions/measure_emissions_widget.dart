import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MeasureEmissionsWidget extends StatefulWidget {
  MeasureEmissionsWidget({Key key}) : super(key: key);

  @override
  _MeasureEmissionsWidgetState createState() => _MeasureEmissionsWidgetState();
}

class _MeasureEmissionsWidgetState extends State<MeasureEmissionsWidget> {
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
          'Overview',
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
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: AutoSizeText(
                        'How we measure your emissions',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.customColor4,
                          fontSize: 30,
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
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                      child: AutoSizeText(
                        'We hope you like our carbon footprint calculator. Once you’ve answered all the questions in the survey you’ll see the size of your estimated digital carbon footprint, based on the information you’ve given us.\\n\\nWhat is a digital carbon footprint?\\nYour footprint is a way of showing your carbon emissions, compared to other people and other countries. It’s your impression on the planet.\\n\\nBy carbon emissions, we mean greenhouse gases, including carbon dioxide, methane and nitrous oxide. Humans produce these gases in vast quantities by doing things like burning coal, oil and gas for energy and cutting down forests. Your individual emissions are built up from the energy you use personally for digital services powered by cloud computing.\\n\\nWe convert all the different greenhouse gases into an equivalent impact from carbon dioxide, the main greenhouse gas. Your footprint value is in “tonnes of carbon dioxide equivalent”.\\n\\nHow we calculate\\nThe methodology for the Co2mmit tool is designed to calculate the carbon emissions associated with cloud-based computing resources. It covers Scope 1, 2,3 carbon emissions calculated by technology providers manufacture, packaging, transportation use, and end of life phases of datacenter hardware in all owned and leased data centers. \\n\\nCalculation standards\\nGreenhouse gas (GHG) emissions are classified into three categories according to the Greenhouse Gas Protocol, a globally recognised standard for the calculation methodology and reporting of GHG emissions\\nScope 1 - direct emissions from sources that are controlled by an organisation\\nScope 2 – indirect emissions from the consumption of electricity, heat or steam\\nScope 3 – all other indirect emissions that occur in the supply chain of the organisation\\nThe calculations represented in this tool are the product of a Life Cycle Evaluation that assesses energy use associated with cloud computing operations. \\n\\nAverage footprints\\nIn your calculator results you’ll see how your footprint compares with others in the world. You are marked up against a UK average of 10.51 tonnes in 2020; and a world average of 6.76 tonnes based on figures reported by the IEA.\\n\\nTo calculate the UK’s consumption-based footprint we used data from the Office for National Statistics, which undergoes regular assurance reviews. We supplemented this with data from the Eora MRIO database, which has undergone reliability testing.\\n\\nWe also consulted the Eora database to find the energy and emissions figures for the rest of the world. We took care to ensure that this was consistent with UK data.\\n',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.tertiaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
