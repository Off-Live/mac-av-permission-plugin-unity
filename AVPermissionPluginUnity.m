#import "AVPermissionPluginUnity.h"
#import "AVPermission.h"

extern void _requestCameraPermission(CallbackFunc callback) {
    requestCameraPermissionCallback = callback;
    if (requestCameraPermissionCallback == NULL) return;
    AVPermission* avPermission = [[AVPermission alloc] init];
    [avPermission requestCameraPermissionWithCompletionHandler:^(BOOL granted) {
        if (granted) {
            requestCameraPermissionCallback([@"true" UTF8String]);
        }
        else {
            requestCameraPermissionCallback([@"false" UTF8String]);
        }
    }];
}

extern void _requestMicPermission(CallbackFunc callback) {
    requestMicPermissionCallback = callback;
    if (requestCameraPermissionCallback == NULL) return;
    AVPermission* avPermission = [[AVPermission alloc] init];
    [avPermission requestMicPermissionWithCompletionHandler:^(BOOL granted) {
        if (granted) {
            requestMicPermissionCallback([@"true" UTF8String]);
        }
        else {
            requestMicPermissionCallback([@"false" UTF8String]);
        }
    }];
}

extern bool _authorizedCameraPermission()
{
    AVPermission* avPermission = [[AVPermission alloc] init];
	return [avPermission authorizedCameraPermission];
}

extern bool _authorizedMicPermission()
{
    AVPermission* avPermission = [[AVPermission alloc] init];
    return [avPermission authorizedMicPermission];
}
