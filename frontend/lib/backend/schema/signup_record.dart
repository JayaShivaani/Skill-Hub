import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignupRecord extends FirestoreRecord {
  SignupRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "psw" field.
  String? _psw;
  String get psw => _psw ?? '';
  bool hasPsw() => _psw != null;

  // "cpsw" field.
  String? _cpsw;
  String get cpsw => _cpsw ?? '';
  bool hasCpsw() => _cpsw != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _psw = snapshotData['psw'] as String?;
    _cpsw = snapshotData['cpsw'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('signup');

  static Stream<SignupRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SignupRecord.fromSnapshot(s));

  static Future<SignupRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SignupRecord.fromSnapshot(s));

  static SignupRecord fromSnapshot(DocumentSnapshot snapshot) => SignupRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SignupRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SignupRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SignupRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SignupRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSignupRecordData({
  String? email,
  String? psw,
  String? cpsw,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'psw': psw,
      'cpsw': cpsw,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class SignupRecordDocumentEquality implements Equality<SignupRecord> {
  const SignupRecordDocumentEquality();

  @override
  bool equals(SignupRecord? e1, SignupRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.psw == e2?.psw &&
        e1?.cpsw == e2?.cpsw &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(SignupRecord? e) => const ListEquality().hash([
        e?.email,
        e?.psw,
        e?.cpsw,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is SignupRecord;
}
