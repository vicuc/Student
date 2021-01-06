class PhuongAn {
  String pa_id;
  String pa_noidung;

  PhuongAn({
    this.pa_id,
    this.pa_noidung,
  });

  @override
  PhuongAn.fromJson(Map<String, dynamic> json, String id) {
    this.pa_id=id;
    this.pa_noidung = json['pa_noidung'];
  }
}