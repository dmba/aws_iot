part of aws_iot.actions;

class CancelAuditTask extends Action<bool> {
  CancelAuditTask(this.taskId);

  final String taskId;

  @override
  Future<bool> invoke(Dio client) async {
    return client
        .put<void>(
          '/audit/tasks/$taskId/cancel',
        )
        .then(isSuccess)
        .catchError(handleError);
  }

  @override
  void handleDioError(DioError error) {
    switch (error.response.statusCode) {
      case 500:
        throw const InternalFailureException();
      case 400:
        throw const InvalidRequestException();
      case 404:
        throw const ResourceNotFoundException();
      case 429:
        throw const ThrottlingException();
    }
  }
}
