class CustomError {
  CustomError({this.errMsg = ''});
  final String errMsg;

  @override
  List<Object?> get props => [errMsg];

  @override
  String toString() {
    return 'CustomError{errMsg=$errMsg}';
  }
}
