import 'package:quakezones/utils/type_helper.dart';

class EarthQuakeAPI {
  String _type;
  Metadata _metadata;
  List<Features> _features;
  List<double> _bbox;

  EarthQuakeAPI(
      {String type,
      Metadata metadata,
      List<Features> features,
      List<double> bbox}) {
    this._type = type;
    this._metadata = metadata;
    this._features = features;
    this._bbox = bbox;
  }

  String get type => _type;
  set type(String type) => _type = type;
  Metadata get metadata => _metadata;
  set metadata(Metadata metadata) => _metadata = metadata;
  List<Features> get features => _features;
  set features(List<Features> features) => _features = features;
  List<double> get bbox => _bbox;
  set bbox(List<double> bbox) => _bbox = bbox;

  EarthQuakeAPI.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _metadata = json['metadata'] != null
        ? new Metadata.fromJson(json['metadata'])
        : null;
    if (json['features'] != null) {
      _features = new List<Features>();
      json['features'].forEach((v) {
        _features.add(new Features.fromJson(v));
      });
    }
    _bbox = json['bbox'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    if (this._metadata != null) {
      data['metadata'] = this._metadata.toJson();
    }
    if (this._features != null) {
      data['features'] = this._features.map((v) => v.toJson()).toList();
    }
    data['bbox'] = this._bbox;
    return data;
  }
}

class Metadata {
  int _generated;
  String _url;
  String _title;
  int _status;
  String _api;
  int _count;

  Metadata(
      {int generated,
      String url,
      String title,
      int status,
      String api,
      int count}) {
    this._generated = generated;
    this._url = url;
    this._title = title;
    this._status = status;
    this._api = api;
    this._count = count;
  }

  int get generated => _generated;
  set generated(int generated) => _generated = generated;
  String get url => _url;
  set url(String url) => _url = url;
  String get title => _title;
  set title(String title) => _title = title;
  int get status => _status;
  set status(int status) => _status = status;
  String get api => _api;
  set api(String api) => _api = api;
  int get count => _count;
  set count(int count) => _count = count;

  Metadata.fromJson(Map<String, dynamic> json) {
    _generated = json['generated'];
    _url = json['url'];
    _title = json['title'];
    _status = json['status'];
    _api = json['api'];
    _count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['generated'] = this._generated;
    data['url'] = this._url;
    data['title'] = this._title;
    data['status'] = this._status;
    data['api'] = this._api;
    data['count'] = this._count;
    return data;
  }
}

class Features {
  String _type;
  Properties _properties;
  Geometry _geometry;
  String _id;

  Features({String type, Properties properties, Geometry geometry, String id}) {
    this._type = type;
    this._properties = properties;
    this._geometry = geometry;
    this._id = id;
  }

  String get type => _type;
  set type(String type) => _type = type;
  Properties get properties => _properties;
  set properties(Properties properties) => _properties = properties;
  Geometry get geometry => _geometry;
  set geometry(Geometry geometry) => _geometry = geometry;
  String get id => _id;
  set id(String id) => _id = id;

  Features.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _properties = json['properties'] != null
        ? new Properties.fromJson(json['properties'])
        : null;
    _geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    if (this._properties != null) {
      data['properties'] = this._properties.toJson();
    }
    if (this._geometry != null) {
      data['geometry'] = this._geometry.toJson();
    }
    data['id'] = this._id;
    return data;
  }
}

class Properties {
  double _mag;
  String _place;
  int _time;
  int _updated;
  Null _tz;
  String _url;
  String _detail;
  int _felt;
  double _cdi;
  double _mmi;
  String _alert;
  String _status;
  int _tsunami;
  int _sig;
  String _net;
  String _code;
  String _ids;
  String _sources;
  String _types;
  int _nst;
  double _dmin;
  double _rms;
  double _gap;
  String _magType;
  String _type;
  String _title;

  Properties(
      {double mag,
      String place,
      int time,
      int updated,
      Null tz,
      String url,
      String detail,
      int felt,
      double cdi,
      double mmi,
      String alert,
      String status,
      int tsunami,
      int sig,
      String net,
      String code,
      String ids,
      String sources,
      String types,
      int nst,
      double dmin,
      double rms,
      double gap,
      String magType,
      String type,
      String title}) {
    this._mag = mag;
    this._place = place;
    this._time = time;
    this._updated = updated;
    this._tz = tz;
    this._url = url;
    this._detail = detail;
    this._felt = felt;
    this._cdi = cdi;
    this._mmi = mmi;
    this._alert = alert;
    this._status = status;
    this._tsunami = tsunami;
    this._sig = sig;
    this._net = net;
    this._code = code;
    this._ids = ids;
    this._sources = sources;
    this._types = types;
    this._nst = nst;
    this._dmin = dmin;
    this._rms = rms;
    this._gap = gap;
    this._magType = magType;
    this._type = type;
    this._title = title;
  }

  double get mag => _mag;
  set mag(double mag) => _mag = mag;
  String get place => _place;
  set place(String place) => _place = place;
  int get time => _time;
  set time(int time) => _time = time;
  int get updated => _updated;
  set updated(int updated) => _updated = updated;
  Null get tz => _tz;
  set tz(Null tz) => _tz = tz;
  String get url => _url;
  set url(String url) => _url = url;
  String get detail => _detail;
  set detail(String detail) => _detail = detail;
  int get felt => _felt;
  set felt(int felt) => _felt = felt;
  double get cdi => _cdi;
  set cdi(double cdi) => _cdi = cdi;
  double get mmi => _mmi;
  set mmi(double mmi) => _mmi = mmi;
  String get alert => _alert;
  set alert(String alert) => _alert = alert;
  String get status => _status;
  set status(String status) => _status = status;
  int get tsunami => _tsunami;
  set tsunami(int tsunami) => _tsunami = tsunami;
  int get sig => _sig;
  set sig(int sig) => _sig = sig;
  String get net => _net;
  set net(String net) => _net = net;
  String get code => _code;
  set code(String code) => _code = code;
  String get ids => _ids;
  set ids(String ids) => _ids = ids;
  String get sources => _sources;
  set sources(String sources) => _sources = sources;
  String get types => _types;
  set types(String types) => _types = types;
  int get nst => _nst;
  set nst(int nst) => _nst = nst;
  double get dmin => _dmin;
  set dmin(double dmin) => _dmin = dmin;
  double get rms => _rms;
  set rms(double rms) => _rms = rms;
  double get gap => _gap;
  set gap(double gap) => _gap = gap;
  String get magType => _magType;
  set magType(String magType) => _magType = magType;
  String get type => _type;
  set type(String type) => _type = type;
  String get title => _title;
  set title(String title) => _title = title;

  Properties.fromJson(Map<String, dynamic> json) {
    _mag = TypeHelper.toDouble(json['mag']);
    _place = json['place'];
    _time = TypeHelper.toInt(json['time']);
    _updated = TypeHelper.toInt(json['updated']);
    _tz = json['tz'];
    _url = json['url'];
    _detail = json['detail'];
    _felt = TypeHelper.toInt(json['felt']);
    _cdi = TypeHelper.toDouble(json['cdi']);
    _mmi = TypeHelper.toDouble(json['mmi']);
    _alert = json['alert'];
    _status = json['status'];
    _tsunami = TypeHelper.toInt(json['tsunami']);
    _sig = TypeHelper.toInt(json['sig']);
    _net = json['net'];
    _code = json['code'];
    _ids = json['ids'];
    _sources = json['sources'];
    _types = json['types'];
    _nst = TypeHelper.toInt(json['nst']);
    _dmin = TypeHelper.toDouble(json['dmin']);
    _rms = TypeHelper.toDouble(json['rms']);
    _gap = TypeHelper.toDouble(json['gap']);
    _magType = json['magType'];
    _type = json['type'];
    _title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mag'] = this._mag;
    data['place'] = this._place;
    data['time'] = this._time;
    data['updated'] = this._updated;
    data['tz'] = this._tz;
    data['url'] = this._url;
    data['detail'] = this._detail;
    data['felt'] = this._felt;
    data['cdi'] = this._cdi;
    data['mmi'] = this._mmi;
    data['alert'] = this._alert;
    data['status'] = this._status;
    data['tsunami'] = this._tsunami;
    data['sig'] = this._sig;
    data['net'] = this._net;
    data['code'] = this._code;
    data['ids'] = this._ids;
    data['sources'] = this._sources;
    data['types'] = this._types;
    data['nst'] = this._nst;
    data['dmin'] = this._dmin;
    data['rms'] = this._rms;
    data['gap'] = this._gap;
    data['magType'] = this._magType;
    data['type'] = this._type;
    data['title'] = this._title;
    return data;
  }
}

class Geometry {
  String _type;
  List<double> _coordinates;

  Geometry({String type, List<double> coordinates}) {
    this._type = type;
    this._coordinates = coordinates;
  }

  String get type => _type;
  set type(String type) => _type = type;
  List<double> get coordinates => _coordinates;
  set coordinates(List<double> coordinates) => _coordinates = coordinates;

  Geometry.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['coordinates'] = this._coordinates;
    return data;
  }
}