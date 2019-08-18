part of 'package:aws_iot/src/actions/actions.dart';

abstract class Action<T> {
  @protected
  Future<T> invoke(Dio client);

  @protected
  T toData(Response<T> resp) {
    return resp.data;
  }

  @protected
  bool isSuccess(Response<dynamic> resp) {
    return resp.statusCode == 200 || resp.statusCode == 201;
  }

  @protected
  void handleError(dynamic e) {
    e is DioError ? handleDioError(e) : throw e;
  }

  @protected
  void handleDioError(DioError error) {}
}
