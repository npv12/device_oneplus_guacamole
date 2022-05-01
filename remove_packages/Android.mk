LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackagesDevice
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Drive CalendarGooglePrebuilt Chrome Chrome-Stub Maps Photos PrebuiltGmail PixelWallpapers2020 RecorderPrebuilt SafetyHubPrebuilt FilesPrebuilt Ornament PixelLiveWallpaperPrebuilt CameraRoll Camera2
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
