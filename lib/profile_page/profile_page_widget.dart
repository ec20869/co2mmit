import '../about/about_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../login/login_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ProfilePageWidget extends StatefulWidget {
  ProfilePageWidget({Key key}) : super(key: key);

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  String uploadedFileUrl = '';
  TextEditingController textController1;
  TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(text: currentUserDisplayName);
    textController2 = TextEditingController(text: currentUserEmail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.customColor2,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.customColor5,
            size: 24,
          ),
        ),
        title: Text(
          'My Profile',
          style: FlutterFlowTheme.subtitle1.override(
            fontFamily: 'Open Sans Condensed',
            color: FlutterFlowTheme.customColor5,
            fontSize: 30,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await signOut();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginWidget(),
                ),
              );
            },
            icon: Icon(
              Icons.logout,
              color: FlutterFlowTheme.tertiaryColor,
              size: 30,
            ),
            iconSize: 30,
          )
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.customColor2,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.customColor2,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(0, 0),
                                  child: Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0x77090F13),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.asset(
                                          'assets/images/Logo@3x.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                'https://i.picsum.photos/id/830/200/200.jpg?hmac=3ce7zNUn5yg_XKy7dHgIHta7t_0vghPQnAGUSGJuBZE',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(currentUserReference),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: LinearProgressIndicator(
                                  color: FlutterFlowTheme.customColor4,
                                ),
                              );
                            }
                            final textUsersRecord = snapshot.data;
                            return InkWell(
                              onTap: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                );
                                if (selectedMedia != null &&
                                    validateFileFormat(
                                        selectedMedia.storagePath, context)) {
                                  showUploadMessage(
                                      context, 'Uploading file...',
                                      showLoading: true);
                                  final downloadUrl = await uploadData(
                                      selectedMedia.storagePath,
                                      selectedMedia.bytes);
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                  if (downloadUrl != null) {
                                    setState(
                                        () => uploadedFileUrl = downloadUrl);
                                    showUploadMessage(context, 'Success!');
                                  } else {
                                    showUploadMessage(
                                        context, 'Failed to upload media');
                                    return;
                                  }
                                }
                              },
                              child: AutoSizeText(
                                'Edit Image',
                                style: GoogleFonts.getFont(
                                  'DM Sans',
                                  color: FlutterFlowTheme.customColor4,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.customColor2,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 8, 8, 20),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: textController1,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Your Name',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                  hintText: 'What do people call you...?',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: Color(0xFF8B97A2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFDBE2E7),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFDBE2E7),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Open Sans Condensed',
                                  color: FlutterFlowTheme.tertiaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: textController2,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: FlutterFlowTheme.tertiaryColor,
                                  ),
                                  hintText: 'Enter a new email',
                                  hintStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Open Sans Condensed',
                                    color: Color(0xFF8B97A2),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFDBE2E7),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFDBE2E7),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Open Sans Condensed',
                                  color: FlutterFlowTheme.tertiaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                final usersUpdateData = createUsersRecordData(
                                  email: '',
                                  displayName: '',
                                );
                                await currentUserReference
                                    .update(usersUpdateData);
                              },
                              text: 'Save Changes',
                              options: FFButtonOptions(
                                width: 230,
                                height: 50,
                                color: FlutterFlowTheme.customColor5,
                                textStyle: FlutterFlowTheme.bodyText2.override(
                                  fontFamily: 'Open Sans Condensed',
                                  color: FlutterFlowTheme.tertiaryColor,
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
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AboutWidget(),
                                  ),
                                );
                              },
                              text: 'About us',
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: FlutterFlowTheme.customColor2,
                                textStyle: FlutterFlowTheme.subtitle2.override(
                                  fontFamily: 'Open Sans Condensed',
                                  color: FlutterFlowTheme.customColor4,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: 12,
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
      ),
    );
  }
}
