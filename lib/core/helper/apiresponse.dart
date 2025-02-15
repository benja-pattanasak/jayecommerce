class ApiResponse<T> {
  bool success = true;
  late T data;
  String errorMessage = "";
  ApiResponse() {}
}
