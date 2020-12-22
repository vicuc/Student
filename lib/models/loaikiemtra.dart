class LoaiKiemTra {
  String lkt_id;
  String lkt_ten;

  LoaiKiemTra({
    this.lkt_id,
    this.lkt_ten,
  });

  @override
  LoaiKiemTra.fromJson(Map<String, dynamic> json, String id) {
    this.lkt_id=id;
    this.lkt_ten = json['lkt_ten'];
  }

}