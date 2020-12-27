class BangDiemCaNhan {
  String bdcn_id;
  String mh_id;
  String hs_id;
  String diem_hk1;
  String diem_hk2;

  BangDiemCaNhan({
    this.hs_id,
    this.mh_id,
    this.bdcn_id,
    this.diem_hk1,
    this.diem_hk2
  });

  @override
  BangDiemCaNhan.fromJson(Map<String, dynamic> json, String id) {
    this.bdcn_id = id;
    this.hs_id = json ['hs_id'];
    this.mh_id = json ['mh_id'];
    this.diem_hk1 = json ['diem_hk1'];
    this.diem_hk2 = json['diem_hk2'];
  }
}