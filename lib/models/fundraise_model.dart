import 'dart:convert';

class ListFundraiseModel {
  List<ListFundraiseModelDatum>? data;
  Meta? meta;

  ListFundraiseModel({
    this.data,
    this.meta,
  });

  factory ListFundraiseModel.fromRawJson(String str) =>
      ListFundraiseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListFundraiseModel.fromJson(Map<String, dynamic> json) =>
      ListFundraiseModel(
        data: json["data"] == null
            ? []
            : List<ListFundraiseModelDatum>.from(
                json["data"]!.map((x) => ListFundraiseModelDatum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class ListFundraiseModelDatum {
  int? id;
  PurpleAttributes? attributes;

  ListFundraiseModelDatum({
    this.id,
    this.attributes,
  });

  factory ListFundraiseModelDatum.fromRawJson(String str) =>
      ListFundraiseModelDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListFundraiseModelDatum.fromJson(Map<String, dynamic> json) =>
      ListFundraiseModelDatum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class PurpleAttributes {
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
  MainImage? mainImage;
  Donations? donations;

  PurpleAttributes({
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
    this.mainImage,
    this.donations,
  });

  factory PurpleAttributes.fromRawJson(String str) =>
      PurpleAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
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
        mainImage: json["mainImage"] == null
            ? null
            : MainImage.fromJson(json["mainImage"]),
        donations: json["donations"] == null
            ? null
            : Donations.fromJson(json["donations"]),
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
        "mainImage": mainImage?.toJson(),
        "donations": donations?.toJson(),
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

class Donations {
  List<DonationsDatum>? data;

  Donations({
    this.data,
  });

  factory Donations.fromRawJson(String str) =>
      Donations.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Donations.fromJson(Map<String, dynamic> json) => Donations(
        data: json["data"] == null
            ? []
            : List<DonationsDatum>.from(
                json["data"]!.map((x) => DonationsDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class DonationsDatum {
  int? id;
  FluffyAttributes? attributes;

  DonationsDatum({
    this.id,
    this.attributes,
  });

  factory DonationsDatum.fromRawJson(String str) =>
      DonationsDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DonationsDatum.fromJson(Map<String, dynamic> json) => DonationsDatum(
        id: json["id"],
        attributes: json["attributes"] == null
            ? null
            : FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class FluffyAttributes {
  String? nama;
  String? nominal;
  String? kontak;
  String? pesan;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  DonationStatus? donationStatus;

  FluffyAttributes({
    this.nama,
    this.nominal,
    this.kontak,
    this.pesan,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.donationStatus,
  });

  factory FluffyAttributes.fromRawJson(String str) =>
      FluffyAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
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
        donationStatus: donationStatusValues.map[json["donationStatus"]]!,
      );

  Map<String, dynamic> toJson() => {
        "nama": nama,
        "nominal": nominal,
        "kontak": kontak,
        "pesan": pesan,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "donationStatus": donationStatusValues.reverse[donationStatus],
      };
}

enum DonationStatus { DIPROSES }

final donationStatusValues = EnumValues({"Diproses": DonationStatus.DIPROSES});

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

class MainImage {
  Data? data;

  MainImage({
    this.data,
  });

  factory MainImage.fromRawJson(String str) =>
      MainImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MainImage.fromJson(Map<String, dynamic> json) => MainImage(
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
  String? name;
  dynamic alternativeText;
  dynamic caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  DateTime? createdAt;
  DateTime? updatedAt;

  DataAttributes({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  factory DataAttributes.fromRawJson(String str) =>
      DataAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats:
            json["formats"] == null ? null : Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats?.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Formats {
  Small? thumbnail;
  Small? small;

  Formats({
    this.thumbnail,
    this.small,
  });

  factory Formats.fromRawJson(String str) => Formats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Small.fromJson(json["thumbnail"]),
        small: json["small"] == null ? null : Small.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail?.toJson(),
        "small": small?.toJson(),
      };
}

class Small {
  String? name;
  String? hash;
  String? ext;
  String? mime;
  dynamic path;
  int? width;
  int? height;
  double? size;
  String? url;

  Small({
    this.name,
    this.hash,
    this.ext,
    this.mime,
    this.path,
    this.width,
    this.height,
    this.size,
    this.url,
  });

  factory Small.fromRawJson(String str) => Small.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Small.fromJson(Map<String, dynamic> json) => Small(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
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
