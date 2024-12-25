/// rate : 3.9
/// count : 120

class SourceResponse {
  SourceResponse({
    num? rate,
    num? count,}){
    _rate = rate;
    _count = count;
  }

  SourceResponse.fromJson(dynamic json) {
    _rate = json['rate'];
    _count = json['count'];
  }
  num? _rate;
  num? _count;
  SourceResponse copyWith({  num? rate,
    num? count,
  }) => SourceResponse(  rate: rate ?? _rate,
    count: count ?? _count,
  );
  num? get rate => _rate;
  num? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = _rate;
    map['count'] = _count;
    return map;
  }

}