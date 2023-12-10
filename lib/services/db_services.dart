import 'package:dartz/dartz.dart';
import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/models/DonatesListModel.dart';
import 'package:gspdt/models/article_model.dart';
import 'package:gspdt/models/fundraise_model.dart';
import 'package:gspdt/models/project_model.dart';

class DbServices {
  Future<Either<String, ListProjectModel>> fetchData() async {
    final result = await get(
        Uri.parse("https://api.amala-api.online/api/projects?populate=*"),
        headers: {'Content-Type': 'application/json', 'Referer': '*'});

    if (result.statusCode == 200) {
      return Right(ListProjectModel.fromRawJson(result.body));
    } else {
      return Left('Gagal');
    }
  }

  Future<Either<String, ListArticleModel>> fetchArticleData() async {
    final result = await get(
        Uri.parse("https://api.amala-api.online/api/articles?populate=*"),
        headers: {'Content-Type': 'application/json', 'Referer': '*'});

    if (result.statusCode == 200) {
      return Right(ListArticleModel.fromRawJson(result.body));
    } else {
      return Left('Gagal');
    }
  }

  Future<Either<String, ListFundraiseModel>> fetchFundraiseData() async {
    final result = await get(
        Uri.parse("https://api.amala-api.online/api/fundraises?populate=*"),
        headers: {'Content-Type': 'application/json', 'Referer': '*'});

    if (result.statusCode == 200) {
      return Right(ListFundraiseModel.fromRawJson(result.body));
    } else {
      return Left('Gagal');
    }
  }

  Future<Either<String, DonatesListModel>> fetchDonateData() async {
    final result = await get(
        Uri.parse("https://api.amala-api.online/api/donations?populate=*"),
        headers: {'Content-Type': 'application/json', 'Referer': '*'});

    if (result.statusCode == 200) {
      return Right(DonatesListModel.fromRawJson(result.body));
    } else {
      return Left('Gagal');
    }
  }

  Future<String?> postDonateData(
      {required String nama,
      required int nominal,
      required String kontak,
      required String pesan,
      required int id}) async {
    var headers = {'Content-Type': 'application/json', 'Referer': '*'};
    var request = Request(
        'POST', Uri.parse('https://api.amala-api.online/api/donations'));
    request.body = json.encode({
      "data": {
        "nama": nama,
        "nominal": nominal,
        "kontak": kontak,
        "pesan": pesan,
        "donationStatus": "Diproses",
        "fundraise": {"id": id}
      }
    });
    request.headers.addAll(headers);

    StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return response.stream.bytesToString();
    } else {
      return response.reasonPhrase;
    }
  }
}
