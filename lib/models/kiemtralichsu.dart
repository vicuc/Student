import 'package:cloud_firestore/cloud_firestore.dart';

class KiemTraLichTrinh {
  kiemtralichsu(String id_hs, String id_lop, String nk) {
    print(id_hs);
    print(id_lop);
    print(nk);
    return Firestore.instance
        .collection("lichsu_lop")
        .where("hs_id", isEqualTo: id_hs)
        .where("id_nk", isEqualTo: nk)
        .where("l_id", isEqualTo: id_lop)
        .getDocuments();
  }
}
