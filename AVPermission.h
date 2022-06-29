#import <Foundation/NSException.h>
#import <AVFoundation/AVFoundation.h>

@interface AVPermission : NSObject {}

- (void) requestCameraPermissionWithCompletionHandler: (void (^)(BOOL granted))handler;
- (void) requestMicPermissionWithCompletionHandler: (void (^)(BOOL granted))handler;
- (BOOL) authorizedCameraPermission;
- (BOOL) authorizedMicPermission;

@end
