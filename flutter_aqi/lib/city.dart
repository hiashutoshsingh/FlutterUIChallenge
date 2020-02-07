class CityHub {
  Meta meta;
  List<Results> results;

  CityHub({this.meta, this.results});

  CityHub.fromJson(Map<String, dynamic> json) {
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meta {
  String name;
  String license;
  String website;
  int page;
  int limit;
  int found;

  Meta(
      {this.name,
      this.license,
      this.website,
      this.page,
      this.limit,
      this.found});

  Meta.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    license = json['license'];
    website = json['website'];
    page = json['page'];
    limit = json['limit'];
    found = json['found'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['license'] = this.license;
    data['website'] = this.website;
    data['page'] = this.page;
    data['limit'] = this.limit;
    data['found'] = this.found;
    return data;
  }
}

class Results {
  String location;
  String city;
  String country;
  double distance;
  List<Measurements> measurements;
  Coordinates coordinates;
  bool completed;

  Results(
      {this.location,
      this.city,
      this.country,
      this.distance,
      this.measurements,
      this.coordinates,
      this.completed});

  Results.fromJson(Map<String, dynamic> json) {
    location = json['location'];
    city = json['city'];
    country = json['country'];
    distance = json['distance'];
    if (json['measurements'] != null) {
      measurements = new List<Measurements>();
      json['measurements'].forEach((v) {
        measurements.add(new Measurements.fromJson(v));
      });
    }
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
  }

  void toggleCompleted() {
    completed = !completed;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location'] = this.location;
    data['city'] = this.city;
    data['country'] = this.country;
    data['distance'] = this.distance;
    if (this.measurements != null) {
      data['measurements'] = this.measurements.map((v) => v.toJson()).toList();
    }
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates.toJson();
    }
    return data;
  }
}

class Measurements {
  String parameter;
  double value;
  String lastUpdated;
  String unit;
  String sourceName;
  AveragingPeriod averagingPeriod;

  Measurements(
      {this.parameter,
      this.value,
      this.lastUpdated,
      this.unit,
      this.sourceName,
      this.averagingPeriod});

  Measurements.fromJson(Map<String, dynamic> json) {
    parameter = json['parameter'];
    value = json['value'];
    lastUpdated = json['lastUpdated'];
    unit = json['unit'];
    sourceName = json['sourceName'];
    averagingPeriod = json['averagingPeriod'] != null
        ? new AveragingPeriod.fromJson(json['averagingPeriod'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['parameter'] = this.parameter;
    data['value'] = this.value;
    data['lastUpdated'] = this.lastUpdated;
    data['unit'] = this.unit;
    data['sourceName'] = this.sourceName;
    if (this.averagingPeriod != null) {
      data['averagingPeriod'] = this.averagingPeriod.toJson();
    }
    return data;
  }
}

class AveragingPeriod {
  double value;
  String unit;

  AveragingPeriod({this.value, this.unit});

  AveragingPeriod.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['unit'] = this.unit;
    return data;
  }
}

class Coordinates {
  double latitude;
  double longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}
