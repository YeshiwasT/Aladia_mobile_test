import 'dart:convert';

import 'package:aladia_mobile/feature/authentication/domain/entity/loginEntity.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constant/constant.dart';
import '../../../../core/error/exceptions.dart';

abstract class AuthRemoteDatasource {
  Future<void> login({
    required LoginEntity loginParams,
  });
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  http.Client client;
  AuthRemoteDatasourceImpl({required this.client});
  @override
  Future<void> login({required LoginEntity loginParams}) async {
    try {
      final response = await client.post(
        Uri.parse(
          loginUrl,
        ),
        body: json.encode(
            {'password': loginParams.password, 'email': loginParams.email}),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      if (response.statusCode == 200) {
        final responseJson = json.decode(response.body)['accessToken'];

        return null;
      } else {
        final responseJson = json.decode(response.body)['message'];
        throw ServerException(errorMessage: responseJson);
      }
    } on ServerException catch (e) {
      throw ServerException(errorMessage: e.errorMessage);
    } catch (e) {
      throw ServerException();
    }
  }
}
