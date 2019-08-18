part of 'aws_iot_client.dart';

class _AwsIotClient implements AwsIotClient {
  _AwsIotClient(this.client);

  final Dio client;

  @override
  Future<bool> acceptCertificateTransfer(
    String certificateId,
    bool setAsActive,
  ) {
    return AcceptCertificateTransfer(certificateId, setAsActive).invoke(client);
  }

  @override
  Future<bool> addThingToBillingGroup({
    String billingGroupArn,
    String billingGroupName,
    String thingArn,
    String thingName,
  }) {
    final data = AddThingToBillingGroupRequest(
      billingGroupArn: billingGroupArn,
      billingGroupName: billingGroupName,
      thingArn: thingArn,
      thingName: thingName,
    );
    return AddThingToBillingGroup(data).invoke(client);
  }

  @override
  Future<Job> associateTargetsWithJob({
    String jobId,
    String comment,
    List<String> targets,
  }) {
    final data = Job(
      comment: comment,
      targets: targets,
    );
    return AssociateTargetsWithJob(jobId, data).invoke(client);
  }

  @override
  Future<bool> attachPolicy({String policyName, String target}) {
    final data = AttachPolicyRequest(
      target: target,
    );
    return AttachPolicy(policyName, data).invoke(client);
  }

  @override
  Future<bool> attachPrincipalPolicy({String policyName, String principal}) {
    return AttachPrincipalPolicy(policyName, principal).invoke(client);
  }

  @override
  Future<bool> attachSecurityProfile({
    String securityProfileName,
    String securityProfileTargetArn,
  }) {
    return AttachSecurityProfile(
      securityProfileName,
      securityProfileTargetArn,
    ).invoke(client);
  }

  @override
  Future<bool> attachThingPrincipal({String thingName, String principal}) {
    return AttachThingPrincipal(thingName, principal).invoke(client);
  }

  @override
  Future<bool> cancelAuditMitigationActionsTask({String taskId}) {
    return CancelAuditMitigationActionsTask(taskId).invoke(client);
  }

  @override
  Future<bool> cancelAuditTask({String taskId}) {
    return CancelAuditTask(taskId).invoke(client);
  }

  @override
  Future<bool> cancelCertificateTransfer({String certificateId}) {
    return CancelCertificateTransfer(certificateId).invoke(client);
  }

  @override
  Future<Job> cancelJob({
    String jobId,
    bool force,
    String comment,
    String reasonCode,
  }) {
    final data = Job(
      comment: comment,
      reasonCode: reasonCode,
    );
    return CancelJob(jobId, force, data).invoke(client);
  }

  @override
  Future<CreateKeysAndCertificateResponse> createKeysAndCertificate(
    bool setAsActive,
  ) {
    return CreateKeysAndCertificate(setAsActive).invoke(client);
  }
}
