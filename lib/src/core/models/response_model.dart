class ResponseModel{
  dynamic data;
  bool status;
  String? token;
  String? error;

  ResponseModel({required  this.status,this.data, this.token, this.error});

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    return ResponseModel(
      data: (json["data"]),
      status: json["status"],
      token: json["token"],
      error: json["error"],
    );
  }
//

}