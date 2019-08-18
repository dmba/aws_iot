import 'package:aws_iot/src/actions/actions.dart';
import 'package:aws_iot/src/data_types/data_types.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

part 'aws_iot_client_impl.dart';

/// AWS IoT Client
abstract class AwsIotClient {
  factory AwsIotClient(Dio dio) = _AwsIotClient;

  /// Accepts a pending certificate transfer.
  /// The default state of the certificate is INACTIVE.
  /// To check for pending certificate transfers, call [listCertificates]
  /// to enumerate your certificates.
  ///
  /// [certificateId]
  ///   The ID of the certificate.
  ///   (The last part of the certificate ARN contains the certificate ID.)
  ///   Length Constraints: Fixed length of 64.
  ///   Pattern: (0x)?[a-fA-F0-9]+
  /// [setAsActive]
  ///   Specifies whether the certificate is active.
  ///
  /// Returns [true] if the action is successful.
  Future<bool> acceptCertificateTransfer(
    String certificateId,
    bool setAsActive,
  );

  /// Adds a thing to a billing group.
  ///
  /// [billingGroupArn]
  ///   The ARN of the billing group.
  /// [billingGroupName]
  ///   The name of the billing group.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [a-zA-Z0-9:_-]+
  /// [thingArn]
  ///   The ARN of the thing to be added to the billing group.
  /// [thingName]
  ///   The name of the thing to be added to the billing group.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [a-zA-Z0-9:_-]+
  ///
  /// Returns [true] if the action is successful.
  Future<bool> addThingToBillingGroup({
    String billingGroupArn,
    String billingGroupName,
    String thingArn,
    String thingName,
  });

  /// Associates a group with a continuous job. The following criteria must be met:
  ///   * The job must have been created with the targetSelection field set to "CONTINUOUS".
  ///   * The job status must currently be "IN_PROGRESS".
  ///   * The total number of targets associated with a job must not exceed 100.
  ///
  /// [jobId]
  ///   The unique identifier you assigned to this job when it was created.
  ///   Length Constraints: Minimum length of 1. Maximum length of 64.
  ///   Pattern: [a-zA-Z0-9_-]+
  /// [comment]
  ///   An optional comment string describing why the job was associated with the targets.
  ///   Length Constraints: Maximum length of 2028.
  ///   Pattern: [^\p{C}]+
  /// [targets]
  ///   A list of thing group ARNs that define the targets of the job.
  ///   Array Members: Minimum number of 1 item.
  ///   Pattern: [^\p{C}]+
  Future<Job> associateTargetsWithJob({
    @required String jobId,
    String comment,
    @required List<String> targets,
  });

  /// Attaches a policy to the specified target.
  ///
  /// [policyName]
  ///   The name of the policy to attach.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [\w+=,.@-]+
  /// [target]
  ///   The identity to which the policy is attached.
  ///
  /// Returns [true] if the action is successful.
  Future<bool> attachPolicy({
    @required String policyName,
    @required String target,
  });

  /// Attaches the specified policy to the specified principal (certificate or other credential).
  /// Note: This API is deprecated. Please use [attachPolicy] instead.
  ///
  /// [policyName]
  ///   The name of the policy to attach.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [\w+=,.@-]+
  /// [principal]
  ///   The principal, which can be a certificate ARN
  ///   (as returned from the CreateCertificate operation)
  ///   or an Amazon Cognito ID.
  ///
  /// Returns [true] if the action is successful.
  @deprecated
  Future<bool> attachPrincipalPolicy({
    @required String policyName,
    @required String principal,
  });

  /// Associates a Device Defender security profile with a thing group or this account.
  /// Each thing group or account can have up to five security profiles associated with it.
  ///
  /// [securityProfileName]
  ///   The security profile that is attached.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [a-zA-Z0-9:_-]+
  /// [securityProfileTargetArn]
  ///   The ARN of the target (thing group) to which the security profile is attached.
  ///
  /// Returns [true] if the action is successful.
  Future<bool> attachSecurityProfile({
    @required String securityProfileName,
    @required String securityProfileTargetArn,
  });

  /// Attaches the specified principal to the specified thing.
  /// A principal can be X.509 certificates, IAM users, groups, and roles,
  /// Amazon Cognito identities or federated identities.
  ///
  /// [thingName]
  ///   The name of the thing.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [a-zA-Z0-9:_-]+
  /// [principal]
  ///   The principal, such as a certificate or other credential.
  ///
  /// Returns [true] if the action is successful.
  Future<bool> attachThingPrincipal({
    @required String thingName,
    @required String principal,
  });

  /// Cancels a mitigation action task that is in progress.
  /// If the task is not in progress, an [InvalidRequestException] occurs.
  ///
  /// [taskId]
  ///   The unique identifier for the task that you want to cancel.
  ///   Length Constraints: Minimum length of 1. Maximum length of 128.
  ///   Pattern: [a-zA-Z0-9_-]+
  ///
  /// Returns [true] if the action is successful.
  Future<bool> cancelAuditMitigationActionsTask({
    @required String taskId,
  });

  /// Cancels an audit that is in progress.
  /// The audit can be either scheduled or on-demand.
  /// If the audit is not in progress, an [InvalidRequestException] occurs.
  ///
  /// [taskId]
  ///   The ID of the audit you want to cancel. You can only cancel an audit that is "IN_PROGRESS".
  ///   Length Constraints: Minimum length of 1. Maximum length of 40.
  ///   Pattern: [a-zA-Z0-9\-]+
  ///
  /// Returns [true] if the action is successful.
  Future<bool> cancelAuditTask({
    @required String taskId,
  });

  /// Cancels a pending transfer for the specified certificate.
  /// Note Only the transfer source account can use this operation to cancel a transfer.
  /// (Transfer destinations can use RejectCertificateTransfer instead.)
  /// After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state.
  /// After the destination account has accepted the transfer, the transfer cannot be cancelled.
  /// After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.
  ///
  /// [certificateId]
  ///   The ID of the certificate. (The last part of the certificate ARN contains the certificate ID.)
  ///   Length Constraints: Fixed length of 64.
  ///   Pattern: (0x)?[a-fA-F0-9]+
  ///
  /// Returns [true] if the action is successful.
  Future<bool> cancelCertificateTransfer({
    @required String certificateId,
  });

  /// Cancels a job.
  ///
  /// [jobId]
  ///   The unique identifier you assigned to this job when it was created.
  ///   Length Constraints: Minimum length of 1. Maximum length of 64.
  ///   Pattern: [a-zA-Z0-9_-]+
  /// [force]
  ///   (Optional) If true job executions with status "IN_PROGRESS" and "QUEUED" are canceled,
  ///   otherwise only job executions with status "QUEUED" are canceled. The default is false.
  ///   Canceling a job which is "IN_PROGRESS", will cause a device which is executing the job
  ///   to be unable to update the job execution status.
  ///   Use caution and ensure that each device executing a job which
  ///   is canceled is able to recover to a valid state.
  /// [comment]
  ///   An optional comment string describing why the job was canceled.
  ///   Length Constraints: Maximum length of 2028.
  ///   Pattern: [^\p{C}]+
  /// [reasonCode]
  ///   A reason code string that explains why the job was canceled.
  ///   Length Constraints: Maximum length of 128.
  ///   Pattern: [\p{Upper}\p{Digit}_]+
  Future<Job> cancelJob({
    @required String jobId,
    bool force,
    String comment,
    String reasonCode,
  });

  /// Creates a 2048-bit RSA key pair and issues an X.509 certificate
  /// using the issued public key.
  /// This is the only time AWS IoT issues the private key for this certificate,
  /// so it is important to keep it in a secure location.
  ///
  /// [setAsActive]
  ///   Specifies whether the certificate is active.
  Future<CreateKeysAndCertificateResponse> createKeysAndCertificate(
    bool setAsActive,
  );
}
