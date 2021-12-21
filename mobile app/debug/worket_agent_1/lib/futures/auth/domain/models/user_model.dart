import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_storage/get_storage.dart';
import 'package:worker_agent/core/services/db/get_storage_keys.dart';

class UserModel {
  String? email,
      displayName,
      phoneNumber,
      photoURL,
      providerData,
      refreshToken,
      tenantId,
      provider;
  String? uid;
  bool? emailVerified;
  bool? isAnonymous;
  Metadata? metadata;

  UserModel({
    this.email,
    this.displayName,
    this.emailVerified,
    this.isAnonymous,
    this.metadata,
    this.phoneNumber,
    this.photoURL,
    this.providerData,
    this.refreshToken,
    this.tenantId,
    this.provider,
    this.uid,
  });

  static UserModel get profile{
    final json = GetStorage().read(GetStorageKeys.PROFILE_KEY);

    return UserModel(
        email: json['email'],
        displayName: json['displayName'],
        emailVerified: json['emailVerified'],
        isAnonymous: json['isAnonymous'],
        metadata:  json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null,
        phoneNumber: json['phoneNumber'],
        photoURL: json['photoURL'],
        providerData: json['providerData'],
        refreshToken: json['refreshToken'],
        tenantId: json['tenantId'],
        provider: json['provider'],
        uid: json['uid']
    );
  }

  static UserModel fromJson(dynamic user,String provider) {
    final json = formatData(user);

    return UserModel(
        email: json['email'],
        displayName: json['displayName'],
        emailVerified: json['emailVerified'],
        isAnonymous: json['isAnonymous'],
        metadata:  json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null,
        phoneNumber: json['phoneNumber'],
        photoURL: json['photoURL'],
        providerData: json['providerData'],
        refreshToken: json['refreshToken'],
        tenantId: json['tenantId'],
        provider: provider,
        uid: json['uid']
    );
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'displayName': displayName,
        'emailVerified': emailVerified,
        'isAnonymous': isAnonymous,
        'metadata': metadata != null ? metadata?.toJson() : null,
        'phoneNumber': phoneNumber,
        'photoURL': photoURL,
        'providerData': providerData,
        'refreshToken': refreshToken,
        'tenantId': tenantId,
        'provider': provider,
        'uid': uid,
      };

  static  Map<String, dynamic> formatData(data){
    final user = (data is UserCredential) ? data.user! : data;
    return {
      'email': user.email,
    'displayName': user.displayName,
    'emailVerified': user.emailVerified,
    'isAnonymous': user.isAnonymous,
    'metadata': {
    'creationTime': user.metadata.creationTime.toString(),
    'lastSignInTime': user.metadata.lastSignInTime.toString(),
    },
    'phoneNumber': user.phoneNumber,
    'photoURL': user.photoURL,
    'providerData': user.providerData.toList().toString(),
    'refreshToken': user.refreshToken,
    'tenantId': user.tenantId,
    'uid': user.uid,
    };
  }


}

class Metadata {
  Metadata({
    this.creationTime,
    this.lastSignInTime,
  });

  Metadata.fromJson(dynamic json) {
    creationTime = json['creationTime'];
    lastSignInTime = json['lastSignInTime'];
  }
  String? creationTime;
  String? lastSignInTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['creationTime'] = creationTime;
    map['lastSignInTime'] = lastSignInTime;
    return map;
  }
}
