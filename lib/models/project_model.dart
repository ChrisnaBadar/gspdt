import 'dart:convert';

class ListProjectModel {
  List<Datum>? data;
  Meta? meta;

  ListProjectModel({
    this.data,
    this.meta,
  });

  factory ListProjectModel.fromRawJson(String str) =>
      ListProjectModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListProjectModel.fromJson(Map<String, dynamic> json) =>
      ListProjectModel(
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
  PurpleAttributes? attributes;

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
            : PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes?.toJson(),
      };
}

class PurpleAttributes {
  String? name;
  String? description;
  String? highlight;
  DateTime? dateStart;
  DateTime? dateEnd;
  String? year;
  String? location;
  String? owner;
  String? contact;
  ListOpt? listOpt1;
  ListOpt? listOpt2;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? category;
  MainImage? mainImage;
  MainImage? mainImagePortrait;
  ImageList? imageList;

  PurpleAttributes({
    this.name,
    this.description,
    this.highlight,
    this.dateStart,
    this.dateEnd,
    this.year,
    this.location,
    this.owner,
    this.contact,
    this.listOpt1,
    this.listOpt2,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.category,
    this.mainImage,
    this.mainImagePortrait,
    this.imageList,
  });

  factory PurpleAttributes.fromRawJson(String str) =>
      PurpleAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
        name: json["name"],
        description: json["description"],
        highlight: json["highlight"],
        dateStart: json["dateStart"] == null
            ? null
            : DateTime.parse(json["dateStart"]),
        dateEnd:
            json["dateEnd"] == null ? null : DateTime.parse(json["dateEnd"]),
        year: json["year"],
        location: json["location"],
        owner: json["owner"],
        contact: json["contact"],
        listOpt1: json["listOpt1"] == null
            ? null
            : ListOpt.fromJson(json["listOpt1"]),
        listOpt2: json["listOpt2"] == null
            ? null
            : ListOpt.fromJson(json["listOpt2"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        category: json["category"],
        mainImage: json["mainImage"] == null
            ? null
            : MainImage.fromJson(json["mainImage"]),
        mainImagePortrait: json["mainImagePortrait"] == null
            ? null
            : MainImage.fromJson(json["mainImagePortrait"]),
        imageList: json["imageList"] == null
            ? null
            : ImageList.fromJson(json["imageList"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "highlight": highlight,
        "dateStart":
            "${dateStart!.year.toString().padLeft(4, '0')}-${dateStart!.month.toString().padLeft(2, '0')}-${dateStart!.day.toString().padLeft(2, '0')}",
        "dateEnd":
            "${dateEnd!.year.toString().padLeft(4, '0')}-${dateEnd!.month.toString().padLeft(2, '0')}-${dateEnd!.day.toString().padLeft(2, '0')}",
        "year": year,
        "location": location,
        "owner": owner,
        "contact": contact,
        "listOpt1": listOpt1?.toJson(),
        "listOpt2": listOpt2?.toJson(),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "category": category,
        "mainImage": mainImage?.toJson(),
        "mainImagePortrait": mainImagePortrait?.toJson(),
        "imageList": imageList?.toJson(),
      };
}

class ImageList {
  List<Dat>? data;

  ImageList({
    this.data,
  });

  factory ImageList.fromRawJson(String str) =>
      ImageList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageList.fromJson(Map<String, dynamic> json) => ImageList(
        data: json["data"] == null
            ? []
            : List<Dat>.from(json["data"]!.map((x) => Dat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Dat {
  int? id;
  DataAttributes? attributes;

  Dat({
    this.id,
    this.attributes,
  });

  factory Dat.fromRawJson(String str) => Dat.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dat.fromJson(Map<String, dynamic> json) => Dat(
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
  Ext? ext;
  Mime? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  Provider? provider;
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
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: providerValues.map[json["provider"]]!,
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
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": providerValues.reverse[provider],
        "provider_metadata": providerMetadata,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

enum Ext { EXT_JPG, JPG }

final extValues = EnumValues({".JPG": Ext.EXT_JPG, ".jpg": Ext.JPG});

class Formats {
  Large? thumbnail;
  Large? small;
  Large? medium;
  Large? large;

  Formats({
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
  });

  factory Formats.fromRawJson(String str) => Formats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Large.fromJson(json["thumbnail"]),
        small: json["small"] == null ? null : Large.fromJson(json["small"]),
        medium: json["medium"] == null ? null : Large.fromJson(json["medium"]),
        large: json["large"] == null ? null : Large.fromJson(json["large"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail?.toJson(),
        "small": small?.toJson(),
        "medium": medium?.toJson(),
        "large": large?.toJson(),
      };
}

class Large {
  String? name;
  String? hash;
  Ext? ext;
  Mime? mime;
  dynamic path;
  int? width;
  int? height;
  double? size;
  String? url;

  Large({
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

  factory Large.fromRawJson(String str) => Large.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        name: json["name"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
      };
}

enum Mime { IMAGE_JPEG }

final mimeValues = EnumValues({"image/jpeg": Mime.IMAGE_JPEG});

enum Provider { LOCAL }

final providerValues = EnumValues({"local": Provider.LOCAL});

class ListOpt {
  ListTitle? listTitle;
  String? listDescription;
  List<ListElement>? list;

  ListOpt({
    this.listTitle,
    this.listDescription,
    this.list,
  });

  factory ListOpt.fromRawJson(String str) => ListOpt.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListOpt.fromJson(Map<String, dynamic> json) => ListOpt(
        listTitle: listTitleValues.map[json["listTitle"]]!,
        listDescription: json["listDescription"],
        list: json["list"] == null
            ? []
            : List<ListElement>.from(
                json["list"]!.map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "listTitle": listTitleValues.reverse[listTitle],
        "listDescription": listDescription,
        "list": list == null
            ? []
            : List<dynamic>.from(list!.map((x) => x.toJson())),
      };
}

class ListElement {
  String? poin;
  String? poinImage;
  String? poinVideo;

  ListElement({
    this.poin,
    this.poinImage,
    this.poinVideo,
  });

  factory ListElement.fromRawJson(String str) =>
      ListElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        poin: json["poin"],
        poinImage: json["poinImage"],
        poinVideo: json["poinVideo"],
      );

  Map<String, dynamic> toJson() => {
        "poin": poin,
        "poinImage": poinImage,
        "poinVideo": poinVideo,
      };
}

enum ListTitle { LINGKUP_PEKERJAAN, TANTANGAN_SOLUSI }

final listTitleValues = EnumValues({
  "Lingkup Pekerjaan": ListTitle.LINGKUP_PEKERJAAN,
  "Tantangan & Solusi": ListTitle.TANTANGAN_SOLUSI
});

class MainImage {
  Dat? data;

  MainImage({
    this.data,
  });

  factory MainImage.fromRawJson(String str) =>
      MainImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MainImage.fromJson(Map<String, dynamic> json) => MainImage(
        data: json["data"] == null ? null : Dat.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
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
