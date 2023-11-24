import 'dart:convert';

class SnapPaymentModel {
  String? token;
  String? redirectUrl;

  SnapPaymentModel({
    this.token,
    this.redirectUrl,
  });

  factory SnapPaymentModel.fromRawJson(String str) =>
      SnapPaymentModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SnapPaymentModel.fromJson(Map<String, dynamic> json) =>
      SnapPaymentModel(
        token: json["token"],
        redirectUrl: json["redirect_url"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "redirect_url": redirectUrl,
      };
}
