class PagingRequestModel {
  int id = 0;
  int pageNumber = 0;
  int pageSize = 0;
  PagingRequestModel(
      {required this.id, required this.pageNumber, required this.pageSize});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['pageNumber'] = pageNumber;
    data['pageSize'] = pageSize;
    return data;
  }
}
