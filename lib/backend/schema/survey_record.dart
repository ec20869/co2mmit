import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'survey_record.g.dart';

abstract class SurveyRecord
    implements Built<SurveyRecord, SurveyRecordBuilder> {
  static Serializer<SurveyRecord> get serializer => _$surveyRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'answer_1')
  int get answer1;

  @nullable
  @BuiltValueField(wireName: 'answer_2')
  int get answer2;

  @nullable
  @BuiltValueField(wireName: 'answer_3')
  int get answer3;

  @nullable
  @BuiltValueField(wireName: 'answer_4')
  int get answer4;

  @nullable
  @BuiltValueField(wireName: 'answer_5')
  int get answer5;

  @nullable
  @BuiltValueField(wireName: 'answer_6')
  int get answer6;

  @nullable
  @BuiltValueField(wireName: 'answer_7')
  int get answer7;

  @nullable
  @BuiltValueField(wireName: 'answer_8')
  int get answer8;

  @nullable
  @BuiltValueField(wireName: 'answer_9')
  int get answer9;

  @nullable
  @BuiltValueField(wireName: 'answer_10')
  int get answer10;

  @nullable
  @BuiltValueField(wireName: 'answer_11')
  int get answer11;

  @nullable
  @BuiltValueField(wireName: 'answer_12')
  int get answer12;

  @nullable
  @BuiltValueField(wireName: 'answer_13')
  int get answer13;

  @nullable
  @BuiltValueField(wireName: 'answer_14')
  int get answer14;

  @nullable
  @BuiltValueField(wireName: 'answer_15')
  int get answer15;

  @nullable
  @BuiltValueField(wireName: 'answer_16')
  int get answer16;

  @nullable
  @BuiltValueField(wireName: 'answer_17')
  int get answer17;

  @nullable
  @BuiltValueField(wireName: 'answer_18')
  int get answer18;

  @nullable
  @BuiltValueField(wireName: 'answer_19')
  int get answer19;

  @nullable
  @BuiltValueField(wireName: 'answer_20')
  int get answer20;

  @nullable
  @BuiltValueField(wireName: 'answer_21')
  int get answer21;

  @nullable
  @BuiltValueField(wireName: 'answer_22')
  int get answer22;

  @nullable
  @BuiltValueField(wireName: 'answer_23')
  int get answer23;

  @nullable
  @BuiltValueField(wireName: 'answer_24')
  int get answer24;

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
  String get email;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SurveyRecordBuilder builder) => builder
    ..answer1 = 0
    ..answer2 = 0
    ..answer3 = 0
    ..answer4 = 0
    ..answer5 = 0
    ..answer6 = 0
    ..answer7 = 0
    ..answer8 = 0
    ..answer9 = 0
    ..answer10 = 0
    ..answer11 = 0
    ..answer12 = 0
    ..answer13 = 0
    ..answer14 = 0
    ..answer15 = 0
    ..answer16 = 0
    ..answer17 = 0
    ..answer18 = 0
    ..answer19 = 0
    ..answer20 = 0
    ..answer21 = 0
    ..answer22 = 0
    ..answer23 = 0
    ..answer24 = 0
    ..displayName = ''
    ..photoUrl = ''
    ..email = ''
    ..uid = ''
    ..phoneNumber = '';

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
  int answer1,
  int answer2,
  int answer3,
  int answer4,
  int answer5,
  int answer6,
  int answer7,
  int answer8,
  int answer9,
  int answer10,
  int answer11,
  int answer12,
  int answer13,
  int answer14,
  int answer15,
  int answer16,
  int answer17,
  int answer18,
  int answer19,
  int answer20,
  int answer21,
  int answer22,
  int answer23,
  int answer24,
  DocumentReference user,
  String displayName,
  String photoUrl,
  DateTime createdTime,
  String email,
  String uid,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        SurveyRecord.serializer,
        SurveyRecord((s) => s
          ..answer1 = answer1
          ..answer2 = answer2
          ..answer3 = answer3
          ..answer4 = answer4
          ..answer5 = answer5
          ..answer6 = answer6
          ..answer7 = answer7
          ..answer8 = answer8
          ..answer9 = answer9
          ..answer10 = answer10
          ..answer11 = answer11
          ..answer12 = answer12
          ..answer13 = answer13
          ..answer14 = answer14
          ..answer15 = answer15
          ..answer16 = answer16
          ..answer17 = answer17
          ..answer18 = answer18
          ..answer19 = answer19
          ..answer20 = answer20
          ..answer21 = answer21
          ..answer22 = answer22
          ..answer23 = answer23
          ..answer24 = answer24
          ..user = user
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..createdTime = createdTime
          ..email = email
          ..uid = uid
          ..phoneNumber = phoneNumber));
