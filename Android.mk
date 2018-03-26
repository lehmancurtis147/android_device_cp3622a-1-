#
# This empty Android.mk file exists to prevent the build system from
# automatically including any other Android.mk files under this directory.
#LOCAL_PATH variable
 LOCAL_PATH := $(device/Coolpad/REL)
 
 include $(CLEAR_VARS)
 
 include $(BUILD_SHARED_LIBRARY)

 LOCAL_MODULE       := wpa_supplicant.conf
#LOCAL_MODULE_TAGS  := optional
#LOCAL_MODULE_CLASS := ETC
#LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/wifi
 include $(BUILD_PREBUILT)

 include $(call all-makefiles-under,$(LOCAL_PATH))
