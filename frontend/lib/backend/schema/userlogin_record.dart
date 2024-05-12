import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserloginRecord extends FirestoreRecord {
  UserloginRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "mobile" field.
  int? _mobile;
  int get mobile => _mobile ?? 0;
  bool hasMobile() => _mobile != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _mobile = castToType<int>(snapshotData['mobile']);
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userlogin');

  static Stream<UserloginRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserloginRecord.fromSnapshot(s));

  static Future<UserloginRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserloginRecord.fromSnapshot(s));

  static UserloginRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserloginRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserloginRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserloginRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserloginRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserloginRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserloginRecordData({
  String? name,
  int? mobile,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'mobile': mobile,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserloginRecordDocumentEquality implements Equality<UserloginRecord> {
  const UserloginRecordDocumentEquality();

  @override
  bool equals(UserloginRecord? e1, UserloginRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.mobile == e2?.mobile &&
        e1?.password == e2?.password;
  }

  @override
  int hash(UserloginRecord? e) =>
      const ListEquality().hash([e?.name, e?.mobile, e?.password]);

  @override
  bool isValidKey(Object? o) => o is UserloginRecord;
}
