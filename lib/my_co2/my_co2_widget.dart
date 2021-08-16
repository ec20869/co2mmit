import '../emissions_audio/emissions_audio_widget.dart';
import '../emissions_email/emissions_email_widget.dart';
import '../emissions_gaming/emissions_gaming_widget.dart';
import '../emissions_internet/emissions_internet_widget.dart';
import '../emissions_social/emissions_social_widget.dart';
import '../emissions_video/emissions_video_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class MyCo2Widget extends StatefulWidget {
  MyCo2Widget({Key key}) : super(key: key);

  @override
  _MyCo2WidgetState createState() => _MyCo2WidgetState();
}

class _MyCo2WidgetState extends State<MyCo2Widget> {
  TextEditingController searchFieldController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        title: Text(
          'My CO2',
          style: FlutterFlowTheme.title1.override(
            fontFamily: 'Open Sans Condensed',
            color: FlutterFlowTheme.customColor5,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.customColor2,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.customColor2,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 4, 20, 0),
                    child: TextFormField(
                      controller: searchFieldController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Search for tips..',
                        labelStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                        hintText: 'Search by name, location etc...',
                        hintStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Open Sans Condensed',
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.customColor4,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.customColor4,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: FlutterFlowTheme.tertiaryColor,
                        ),
                      ),
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Open Sans Condensed',
                        color: FlutterFlowTheme.tertiaryColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Emissions Categories',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Open Sans Condensed',
                    color: FlutterFlowTheme.customColor4,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 1, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor5,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmissionsSocialWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.customColor6,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.thumbsUp,
                                    color: FlutterFlowTheme.tertiaryColor,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Social',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor5,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmissionsVideoWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.customColor6,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.ondemand_video,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Video',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor5,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmissionsGamingWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.customColor6,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.gamepad,
                                    color: FlutterFlowTheme.tertiaryColor,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Gaming',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor5,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmissionsInternetWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.customColor4,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Internet',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 12, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor5,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmissionsAudioWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.customColor4,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.headphones,
                                    color: FlutterFlowTheme.tertiaryColor,
                                    size: 32,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Audio',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 12, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor5,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmissionsEmailWidget(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.customColor4,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.email_outlined,
                                  color: FlutterFlowTheme.tertiaryColor,
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                                child: Text(
                                  'Email',
                                  style: FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AutoSizeText(
                  'My Emissions',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Open Sans Condensed',
                    color: FlutterFlowTheme.customColor4,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmissionsSocialWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: 350,
                        height: 200,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.customColor4,
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: CachedNetworkImageProvider(
                              'https://quickchart.io/chart/render/zm-a2598779-d096-4cab-adc8-7039f99239a6',
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: FlutterFlowTheme.customColor2,
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: FlutterFlowTheme.customColor4,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.customColor5,
                              image: DecorationImage(
                                fit: BoxFit.none,
                                image: Image.network(
                                  '',
                                ).image,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.tertiaryColor,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Social Emissions',
                                              style: FlutterFlowTheme.title2
                                                  .override(
                                                fontFamily:
                                                    'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      EmissionsSocialWidget(),
                                                ),
                                              );
                                            },
                                            text: 'Learn more',
                                            options: FFButtonOptions(
                                              width: 120,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.customColor6,
                                              textStyle: GoogleFonts.getFont(
                                                'Open Sans Condensed',
                                                color: FlutterFlowTheme
                                                    .tertiaryColor,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16,
                                              ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 8,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmissionsVideoWidget(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.customColor4,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.network(
                                'https://quickchart.io/chart/render/zm-8a5de44d-43fa-4a95-864f-5ed351774ac4',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.customColor4,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.customColor5,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Video Emissions',
                                                style: FlutterFlowTheme.title2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EmissionsVideoWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Learn more',
                                              options: FFButtonOptions(
                                                width: 120,
                                                height: 40,
                                                color: FlutterFlowTheme
                                                    .customColor6,
                                                textStyle: GoogleFonts.getFont(
                                                  'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 16,
                                                ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius: 8,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmissionsGamingWidget(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.customColor4,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.network(
                                'https://quickchart.io/chart/render/zm-8a5de44d-43fa-4a95-864f-5ed351774ac4',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.customColor4,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.customColor5,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Gaming Emissions',
                                                style: FlutterFlowTheme.title2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EmissionsGamingWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Learn more',
                                              options: FFButtonOptions(
                                                width: 120,
                                                height: 40,
                                                color: FlutterFlowTheme
                                                    .customColor6,
                                                textStyle: GoogleFonts.getFont(
                                                  'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 16,
                                                ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius: 8,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmissionsInternetWidget(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.customColor4,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.network(
                                'https://quickchart.io/chart/render/zm-8a5de44d-43fa-4a95-864f-5ed351774ac4',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.customColor4,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.customColor5,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Internet Emissions',
                                                style: FlutterFlowTheme.title2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EmissionsInternetWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Learn more',
                                              options: FFButtonOptions(
                                                width: 120,
                                                height: 40,
                                                color: Color(0xFF39D2C0),
                                                textStyle: GoogleFonts.getFont(
                                                  'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 16,
                                                ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius: 8,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmissionsEmailWidget(),
                          ),
                        );
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.customColor4,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: Image.network(
                                'https://quickchart.io/chart/render/zm-8a5de44d-43fa-4a95-864f-5ed351774ac4',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: FlutterFlowTheme.customColor4,
                              width: 5,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.customColor5,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Email Emissions',
                                                style: FlutterFlowTheme.title2
                                                    .override(
                                                  fontFamily:
                                                      'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        EmissionsEmailWidget(),
                                                  ),
                                                );
                                              },
                                              text: 'Learn more',
                                              options: FFButtonOptions(
                                                width: 120,
                                                height: 40,
                                                color: Color(0xFF39D2C0),
                                                textStyle: GoogleFonts.getFont(
                                                  'Open Sans Condensed',
                                                  color: FlutterFlowTheme
                                                      .tertiaryColor,
                                                  fontSize: 16,
                                                ),
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius: 8,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
