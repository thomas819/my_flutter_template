class FormValidators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) return '이메일을 입력하세요';
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) return '유효하지 않은 이메일입니다';
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.length < 6) return '6자 이상 비밀번호를 입력하세요';
    return null;
  }
}