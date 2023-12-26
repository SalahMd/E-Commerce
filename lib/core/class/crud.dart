import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:sorder/core/class/statusrequest.dart';
import 'package:sorder/core/functions/checkinternet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return right(responseBody);
        } else {
          return left(StatusRequest.serverError);
        }
      } else {
        return left(StatusRequest.offline);
      }
    } catch (_) {
      return left(StatusRequest.serverError);
    }
  }
}
