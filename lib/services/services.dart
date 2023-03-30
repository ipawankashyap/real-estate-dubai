import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

abstract class URLS {
  static const baseUrl = 'https://dev.sakan.co';
  static const properties = '$baseUrl/api/v1/pl/properties';
}

class Services {
  Future<bool> isNetConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        log('Net connected ');
        return true;
      }
      return true;
    } catch (e) {
      log('Net not connected ');
      return false;
    }
  }

  post(String url, {Map<String, String>? headers, body, Encoding? encoding}) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        final response = await http.post(Uri.parse(url), headers: headers, body: body, encoding: encoding);

        if (response.statusCode == 200) {
          log('_postUrl : $url');
          log('_postBody : $body');
          log('_postHeaders : $headers');
          log("_postResponse : ${response.body}");
          return response;
        } else if (response.statusCode == 401) {
          log('_postUrl : $url');
          log('_postBody : $body');
          print("_postError response : ${response.body}");
          throw const HttpException('Session expired, please re-launce your app');
        } else if (response.statusCode == 404) {
          log('_postUrl : $url');
          log('_postBody : $body');
          print("_postError response : ${response.body}");
          throw HttpException(response.body);
        } else {
          var error = json.decode(response.body);
          log('_postUrl : $url');
          log('_postBody : $body');
          log("_post Error response with status code  ${response.statusCode} : ${error['ExceptionMessage']}");
          throw HttpException(error['Message']);
        }
      }
    } on SocketException catch (e) {
      print('SocketException : $e');
      throw ('No Internet connection!');
    } catch (error) {
      print('Exception : $error');
      rethrow;
    }
  }

  get(
    String url, {
    Map<String, String>? headers,
  }) async {
    // log('_postUrl : $url');
    // log('_postHeaders : $headers');
    // log('_postBody : $body');

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        final response = await http.get(
          Uri.parse(url),
          headers: headers,
        );

        if (response.statusCode == 200) {
          log('_postUrl : $url');
          //log('_postBody : $body');
          log('_postHeaders : $headers');
          log("_postResponse : ${response.body}");
          return response;
        } else if (response.statusCode == 401) {
          log('_postUrl : $url');
          //log('_postBody : $body');
          print("_postError response : ${response.body}");
          throw const HttpException('Session expired, please re-launce your app');
        } else if (response.statusCode == 404) {
          log('_postUrl : $url');
          //log('_postBody : $body');
          print("_postError response : ${response.body}");
          throw HttpException(response.body);
        } else {
          var error = json.decode(response.body);
          log('_postUrl : $url');
          // log('_postBody : $body');
          log("_post Error response with status code  ${response.statusCode} : ${error['ExceptionMessage']}");
          throw HttpException(error['Message']);
        }
      }
    } on SocketException catch (e) {
      print('SocketException : $e');
      throw ('No Internet connection!');
    } catch (error) {
      print('Exception : $error');
      rethrow;
    }
  }
}
