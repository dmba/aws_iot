part of aws_iot.actions;

// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_UpdateAuthorizer.html
class UpdateAuthorizer extends Action<bool> {
  UpdateAuthorizer(this.pathParam, this.queryParam);

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
