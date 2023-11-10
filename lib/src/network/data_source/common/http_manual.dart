import 'package:bebunge/src/network/repositories/harga_pasar_repository_impl.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 1 Interceptor class
class AuthorizationInterceptor implements InterceptorContract {
  // We need to intercept request
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    try {
      // Fetching token from your locacl data
      var pref = await SharedPreferences.getInstance();
      var token = await pref.getString('bebeliToken');

      // Clear previous header and update it with updated token
      data.headers.clear();

      data.headers['authorization'] = 'Bearer ' + token!;
      data.headers['content-type'] = 'application/json';
    } catch (e) {
      print(e);
    }

    return data;
  }

  // Currently we do not have any need to intercept response
  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    return data;
  }
}

class ExpiredTokenRetryPolicy extends RetryPolicy {
  //Number of retry
  @override
  int maxRetryAttempts = 2;

  @override
  Future<bool> shouldAttemptRetryOnResponse(ResponseData response) async {
    //This is where we need to update our token on 401 response
    if (response.statusCode == 401) {
      //Refresh your token here. Make refresh token method where you get new token from
      //API and set it to your local data
      await HargaPasarRepositoryImpl()
          .getToken(); //Find bellow the code of this function
      return true;
    }
    return false;
  }
}
