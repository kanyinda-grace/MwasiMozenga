

class ServiceBDD {
  String idUtil;
  ServiceBDD({this.idUtil});

  CollectionReference collectionUtilisateurs =
      Firestore.instance.collection('utilisateurs');


  Future<void> saveUserData(nomUtil, emailUtil, photoUrl)async {
    return await collectionUtilisateurs.document(idUtil).setData({
      "idUtil":idUtil,
      'nomUtil':nomUtil,
      'emailUtil':emailUtil,
      'photoUrl':photoUrl,
      'nbrePost':0,
      'lastImgPost':'',
      'cateInscription':FieldValue.serverTimestamp()
    });
  }
}
