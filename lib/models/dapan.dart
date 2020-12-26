class DapAn {
  String da_id;
  String da_ten;
  String da_ghichu;

  DapAn({
    this.da_id,
    this.da_ten,
    this.da_ghichu,
  });

  @override
  DapAn.fromJson(Map<String, dynamic> json, String id) {
    this.da_id=id;
    this.da_ten = json['da_ten'];
    this.da_ghichu=json['da_ghichu'];
  }
}