class TFirebaseAuthException implements Exception {
  final String code;

  TFirebaseAuthException(this.code);

  @override
  String toString() {
    return 'FirebaseAuthException: $code';
  }
}

class TFirebaseException implements Exception {
  final String code;

  TFirebaseException(this.code);

  @override
  String toString() {
    return 'FirebaseException: $code';
  }
}

class TPlatformException implements Exception {
  final String code;

  TPlatformException(this.code);

  @override
  String toString() {
    return 'PlatformException: $code';
  }
}