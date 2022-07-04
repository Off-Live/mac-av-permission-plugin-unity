#import "AVPermissionPluginUnity.h"
#import "AVPermission.h"

extern void _requestCameraPermission(int instanceId, CallbackFunc callback) {
    requestCameraPermissionCallback = callback;
    if (requestCameraPermissionCallback == NULL) return;
    AVPermission* avPermission = [[AVPermission alloc] init];
    [avPermission requestCameraPermissionWithCompletionHandler:^(BOOL granted) {
        if (granted) {
            requestCameraPermissionCallback(instanceId, [@"true" UTF8String]);
        }
        else {
            requestCameraPermissionCallback(instanceId, [@"false" UTF8String]);
        }
    }];
}

extern void _requestMicPermission(int instanceId, CallbackFunc callback) {
    requestMicPermissionCallback = callback;
    if (requestMicPermissionCallback == NULL) return;
    AVPermission* avPermission = [[AVPermission alloc] init];
    
    [avPermission requestMicPermissionWithCompletionHandler:^(BOOL granted) {
        if (granted) {
            requestMicPermissionCallback(instanceId, [@"true" UTF8String]);
        }
        else {
            requestMicPermissionCallback(instanceId, [@"false" UTF8String]);
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
