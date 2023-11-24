import 'dart:convert';

class DonatesListModel {
  List<Datum>? data;
  Meta? meta;

  DonatesListModel({
    this.data,
    this.meta,
  });

  factory DonatesListModel.fromRawJson(String str) =>
      DonatesListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DonatesListModel.fromJson(Map<String, dynamic> json) =>
      DonatesListModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class Datum {
  int? id;
  DatumAttributes? attributes;

  Datum({
    this.id,
    this.attributes,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : DatumAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class DatumAttributes {
  String? nama;
  String? nominal;
  String? kontak;
  String? pesan;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? donationStatus;
  Fundraise? fundraise;

  DatumAttributes({
    this.nama,
    this.nominal,
    this.kontak,
    this.pesan,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.donationStatus,
    this.fundraise,
  });

  factory DatumAttributes.fromRawJson(String str) =>
      DatumAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DatumAttributes.fromJson(Map<String, dynamic> json) =>
      DatumAttributes(
        nama: json["nama"],
        nominal: json["nominal"],
        kontak: json["kontak"],
        pesan: json["pesan"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        donationStatus: json["donationStatus"],
        fundraise: json["fundraise"] == null
            ? null
            : Fundraise.fromJson(json["fundraise"]),
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "nominal": nominal,
        "kontak": kontak,
        "pesan": pesan,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "donationStatus": donationStatus,
        "fundraise": fundraise?.toJson(),
      };
}

class Fundraise {
  Data? data;

  Fundraise({
    this.data,
  });

  factory Fundraise.fromRawJson(String str) =>
      Fundraise.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Fundraise.fromJson(Map<String, dynamic> json) => Fundraise(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  DataAttributes? attributes;

  Data({
    this.id,
    this.attributes,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : DataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class DataAttributes {
  String? title;
  String? targetDonation;
  String? jumlahDonatur;
  DateTime? dateStart;
  DateTime? dateEnd;
  String? namaPenggalang;
  bool? verified;
  List<Description>? description;
  Laporan? laporan;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? collectedFund;

  DataAttributes({
    this.title,
    this.targetDonation,
    this.jumlahDonatur,
    this.dateStart,
    this.dateEnd,
    this.namaPenggalang,
    this.verified,
    this.description,
    this.laporan,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.collectedFund,
  });

  factory DataAttributes.fromRawJson(String str) =>
      DataAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        title: json["title"],
        targetDonation: json["targetDonation"],
        jumlahDonatur: json["jumlahDonatur"],
        dateStart: json["dateStart"] == null
            ? null
            : DateTime.parse(json["dateStart"]),
        dateEnd:
            json["dateEnd"] == null ? null : DateTime.parse(json["dateEnd"]),
        namaPenggalang: json["namaPenggalang"],
        verified: json["verified"],
        description: json["description"] == null
            ? []
            : List<Description>.from(
                json["description"]!.map((x) => Description.fromJson(x))),
        laporan:
            json["laporan"] == null ? null : Laporan.fromJson(json["laporan"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        collectedFund: json["collectedFund"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "targetDonation": targetDonation,
        "jumlahDonatur": jumlahDonatur,
        "dateStart":
            "${dateStart!.year.toString().padLeft(4, '0')}-${dateStart!.month.toString().padLeft(2, '0')}-${dateStart!.day.toString().padLeft(2, '0')}",
        "dateEnd":
            "${dateEnd!.year.toString().padLeft(4, '0')}-${dateEnd!.month.toString().padLeft(2, '0')}-${dateEnd!.day.toString().padLeft(2, '0')}",
        "namaPenggalang": namaPenggalang,
        "verified": verified,
        "description": description == null
            ? []
            : List<dynamic>.from(description!.map((x) => x.toJson())),
        "laporan": laporan?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "collectedFund": collectedFund,
      };
}

class Description {
  DescriptionType? type;
  List<Child>? children;

  Description({
    this.type,
    this.children,
  });

  factory Description.fromRawJson(String str) =>
      Description.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        type: descriptionTypeValues.map[json["type"]]!,
        children: json["children"] == null
            ? []
            : List<Child>.from(json["children"]!.map((x) => Child.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": descriptionTypeValues.reverse[type],
        "children": children == null
            ? []
            : List<dynamic>.from(children!.map((x) => x.toJson())),
      };
}

class Child {
  ChildType? type;
  String? text;

  Child({
    this.type,
    this.text,
  });

  factory Child.fromRawJson(String str) => Child.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        type: childTypeValues.map[json["type"]]!,
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "type": childTypeValues.reverse[type],
        "text": text,
      };
}

enum ChildType { TEXT }

final childTypeValues = EnumValues({"text": ChildType.TEXT});

enum DescriptionType { PARAGRAPH }

final descriptionTypeValues =
    EnumValues({"paragraph": DescriptionType.PARAGRAPH});

class Laporan {
  List<Report>? report;

  Laporan({
    this.report,
  });

  factory Laporan.fromRawJson(String str) => Laporan.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Laporan.fromJson(Map<String, dynamic> json) => Laporan(
        report: json["report"] == null
            ? []
            : List<Report>.from(json["report"]!.map((x) => Report.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "report": report == null
            ? []
            : List<dynamic>.from(report!.map((x) => x.toJson())),
      };
}

class Report {
  String? timestamp;
  String? title;
  String? action;
  String? description;
  String? image;

  Report({
    this.timestamp,
    this.title,
    this.action,
    this.description,
    this.image,
  });

  factory Report.fromRawJson(String str) => Report.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Report.fromJson(Map<String, dynamic> json) => Report(
        timestamp: json["timestamp"],
        title: json["title"],
        action: json["action"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp,
        "title": title,
        "action": action,
        "description": description,
        "image": image,
      };
}

class Meta {
  Pagination? pagination;

  Meta({
    this.pagination,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination?.toJson(),
      };
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  });

  factory Pagination.fromRawJson(String str) =>
      Pagination.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
