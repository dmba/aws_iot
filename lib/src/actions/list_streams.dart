part of 'package:aws_iot/src/actions/actions.dart';

// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ListStreams.html
class ListStreams extends Action<bool> {
  ListStreams(this.pathParam, this.queryParam);

  final String pathParam;
  final String queryParam;

  @override
  Future<bool> invoke(Dio client) {
    return client
        .patch<void>(
          '/someaction/$pathParam',
          queryParameters: <String, dynamic>{
            'param1': queryParam,
          },
        )
        .then(isSuccess)
        .catchError(handleError);
  }
}