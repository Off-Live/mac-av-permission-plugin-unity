#import "AVPermission.h"

@implementation AVPermission

- (void) requestCameraPermissionWithCompletionHandler: (void (^)(BOOL granted))handler
{
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:handler];
}

- (void) requestMicPermissionWithCompletionHandler: (void (^)(BOOL granted))handler
{
    [AVCaptureDevice requestAccessForMediaType:AVMediaTypeAudio completionHandler:handler];
}

- (BOOL) authorizedCameraPermission
{
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    return status == AVAuthorizationStatusAuthorized;
}

- (BOOL) authorizedMicPermission
{
    AVAuthorizationStatus status = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeAudio];
    return status == AVAuthorizationStatusAuthorized;
}

@end
