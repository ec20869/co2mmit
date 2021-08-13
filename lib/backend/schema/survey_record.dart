import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'survey_record.g.dart';

abstract class SurveyRecord
    implements Built<SurveyRecord, SurveyRecordBuilder> {
  static Serializer<SurveyRecord> get serializer => _$surveyRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get social;

  @nullable
  String get video;

  @nullable
  String get audio;

  @nullable
  String get email;

  @nullable
  String get gaming;

  @nullable
  String get internet;

  @nullable
  @BuiltValueField(wireName: 'answer_ref')
  DocumentReference get answerRef;

  @nullable
  String get result;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SurveyRecordBuilder builder) => builder
    ..displayName = ''
    ..photoUrl = ''
    ..social = ''
    ..video = ''
    ..audio = ''
    ..email = ''
    ..gaming = ''
    ..internet = ''
    ..result = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('survey');

  static Stream<SurveyRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SurveyRecord._();
  factory SurveyRecord([void Function(SurveyRecordBuilder) updates]) =
      _$SurveyRecord;

  static SurveyRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createSurveyRecordData({
  DocumentReference user,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  String social,
  String video,
  String audio,
  String email,
  String gaming,
  String internet,
  DocumentReference answerRef,
  String result,
}) =>
    serializers.toFirestore(
        SurveyRecord.serializer,
        SurveyRecord((s) => s
          ..user = user
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..social = social
          ..video = video
          ..audio = audio
          ..email = email
          ..gaming = gaming
          ..internet = internet
          ..answerRef = answerRef
          ..result = result));
