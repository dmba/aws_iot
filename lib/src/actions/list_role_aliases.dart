part of aws_iot.actions;

// TODO(dmba): implement https://docs.aws.amazon.com/iot/latest/apireference/API_ListRoleAliases.html
class ListRoleAliases extends Action<bool> {
  ListRoleAliases(this.pathParam, this.queryParam);

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
