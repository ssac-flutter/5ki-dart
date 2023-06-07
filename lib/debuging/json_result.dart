class JsonResult {
  JsonResult({
    required this.collectionChartDataList,
  });
  late final List<CollectionChartDataList> collectionChartDataList;

  JsonResult.fromJson(Map<String, dynamic> json){
    collectionChartDataList = List.from(json['collectionChartDataList']).map((e)=>CollectionChartDataList.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['collectionChartDataList'] = collectionChartDataList.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class CollectionChartDataList {
  CollectionChartDataList({
    required this.collectionName,
    this.collectionSalePrice,
  });
  late final String collectionName;
  late final List<CollectionSalePrice>? collectionSalePrice;

  CollectionChartDataList.fromJson(Map<String, dynamic> json){
    collectionName = json['collectionName'];
    collectionSalePrice = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['collectionName'] = collectionName;
    _data['collectionSalePrice'] = collectionSalePrice;
    return _data;
  }
}

class CollectionSalePrice {
  CollectionSalePrice({
    required this.price,
    required this.cvtDatetime,
  });
  late final double? price;
  late final String cvtDatetime;

  CollectionSalePrice.fromJson(Map<String, dynamic> json){
    price = json['price'];
    cvtDatetime = json['cvtDatetime'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['price'] = price;
    _data['cvtDatetime'] = cvtDatetime;
    return _data;
  }
}