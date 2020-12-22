class DATL {
  String datl_noidung;
  String datl_id;

  DATL({
    this.datl_id,
    this.datl_noidung,
  });

  @override
  DATL.fromJson(Map<String, dynamic> json, String id) {
    this.datl_id=id;
    this.datl_noidung = json['datl_noidung'];
  }
}