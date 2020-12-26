class Monhoc {
  String mh_ten;
  String mh_id;

  Monhoc({
    this.mh_id,
    this.mh_ten,
  });

  @override
  Monhoc.fromJson(Map<String, dynamic> json, String id) {
    this.mh_id=id;
    this.mh_ten = json['name'];
  }
}