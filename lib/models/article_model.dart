import 'dart:convert';

class ListArticleModel {
  List<Datum>? data;
  Meta? meta;

  ListArticleModel({
    this.data,
    this.meta,
  });

  factory ListArticleModel.fromRawJson(String str) =>
      ListArticleModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListArticleModel.fromJson(Map<String, dynamic> json) =>
      ListArticleModel(
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
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? publishedAt;
  String? articleTitle;
  String? articleDescription;
  String? articleHighlight;
  String? articleDate;
  String? articleAuthor;
  String? articleConclusion;
  ArticleListOpt? articleListOpt1;
  ArticleListOpt? articleListOpt2;
  ArticleMainImage? articleMainImage;
  ArticleMainImage? articleMainImagePortrait;

  DatumAttributes({
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.articleTitle,
    this.articleDescription,
    this.articleHighlight,
    this.articleDate,
    this.articleAuthor,
    this.articleConclusion,
    this.articleListOpt1,
    this.articleListOpt2,
    this.articleMainImage,
    this.articleMainImagePortrait,
  });

  factory DatumAttributes.fromRawJson(String str) =>
      DatumAttributes.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DatumAttributes.fromJson(Map<String, dynamic> json) =>
      DatumAttributes(
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        articleTitle: json["articleTitle"],
        articleDescription: json["articleDescription"],
        articleHighlight: json["articleHighlight"],
        articleDate: json["articleDate"],
        articleAuthor: json["articleAuthor"],
        articleConclusion: json["articleConclusion"],
        articleListOpt1: json["articleListOpt1"] == null
            ? null
            : ArticleListOpt.fromJson(json["articleListOpt1"]),
        articleListOpt2: json["articleListOpt2"] == null
            ? null
            : ArticleListOpt.fromJson(json["articleListOpt2"]),
        articleMainImage: json["articleMainImage"] == null
            ? null
            : ArticleMainImage.fromJson(json["articleMainImage"]),
        articleMainImagePortrait: json["articleMainImagePortrait"] == null
            ? null
            : ArticleMainImage.fromJson(json["articleMainImagePortrait"]),
      );

  Map<String, dynamic> toJson() => {
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "publishedAt": publishedAt?.toIso8601String(),
        "articleTitle": articleTitle,
        "articleDescription": articleDescription,
        "articleHighlight": articleHighlight,
        "articleDate": articleDate,
        "articleAuthor": articleAuthor,
        "articleConclusion": articleConclusion,
        "articleListOpt1": articleListOpt1?.toJson(),
        "articleListOpt2": articleListOpt2?.toJson(),
        "articleMainImage": articleMainImage?.toJson(),
        "articleMainImagePortrait": articleMainImagePortrait?.toJson(),
      };
}

class ArticleListOpt {
  String? listImage;
  String? listTitle;
  String? listDescription;
  List<ListElement>? list;

  ArticleListOpt({
    this.listImage,
    this.listTitle,
    this.listDescription,
    this.list,
  });

  factory ArticleListOpt.fromRawJson(String str) =>
      ArticleListOpt.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ArticleListOpt.fromJson(Map<String, dynamic> json) => ArticleListOpt(
        listImage: json["listImage"],
        listTitle: json["listTitle"],
        listDescription: json["listDescription"],
        list: json["list"] == null
            ? []
            : List<ListElement>.from(
                json["list"]!.map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "listImage": listImage,
        "listTitle": listTitle,
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

class ArticleMainImage {
  Data? data;

  ArticleMainImage({
    this.data,
  });

  factory ArticleMainImage.fromRawJson(String str) =>
      ArticleMainImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ArticleMainImage.fromJson(Map<String, dynamic> json) =>
      ArticleMainImage(
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

enum Ext { JPG }

final extValues = EnumValues({".jpg": Ext.JPG});

class Formats {
  Large? thumbnail;
  Large? large;
  Large? small;
  Large? medium;

  Formats({
    this.thumbnail,
    this.large,
    this.small,
    this.medium,
  });

  factory Formats.fromRawJson(String str) => Formats.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Large.fromJson(json["thumbnail"]),
        large: json["large"] == null ? null : Large.fromJson(json["large"]),
        small: json["small"] == null ? null : Large.fromJson(json["small"]),
        medium: json["medium"] == null ? null : Large.fromJson(json["medium"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail?.toJson(),
        "large": large?.toJson(),
        "small": small?.toJson(),
        "medium": medium?.toJson(),
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
