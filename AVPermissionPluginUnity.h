//
//  PermissionProvider.h
//  AVPermissionPluginUnity
//
//  Created by purpleworks on 2022/06/28.
//

#ifndef PermissionProvider_h
#define PermissionProvider_h

typedef void (*CallbackFunc)(const char *);
static CallbackFunc requestCameraPermissionCallback;
static CallbackFunc requestMicPermissionCallback;

#endif /* PermissionProvider_h */
