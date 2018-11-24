#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/qcom/common/BoardConfigCommon.mk

DEVICE_PATH := device/coolpad/cp3622a
VENDOR_PATH := vendor/coolpad/cp3622a

# Audio
USE_XML_AUDIO_POLICY_CONF := true

# Assert
TARGET_OTA_ASSERT_DEVICE := catalyst cp3622a 3622a

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_USES_LEGACY_MMAP := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_USE_VENDOR_CAMERA_EXT := true
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

# Charger
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true

# CMHW
BOARD_HARDWARE_CLASS += \
    $(VENDOR_PATH)/cmhw
TARGET_TAP_TO_WAKE_NODE := "/sys/touch_screen/easy_wakeup_gesture"

# Flags
BOARD_NO_SECURE_DISCARD := true

# Memory
MALLOC_SVELTE := true

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true

# Graphics
TARGET_USE_COMPAT_GRALLOC_ALIGN := true

# Init
TARGET_LIBINIT_MSM8909_DEFINES_FILE := $(VENDOR_PATH)/init/init_cp3622a.cpp





# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=
BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Properties
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += $(VENDOR_PATH)

#RECOVERY_VARIANT := twrp
ifneq ($(RECOVERY_VARIANT),twrp)
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/recovery/recovery.fstab
else
TARGET_RECOVERY_FSTAB := $(VENDOR_PATH)/recovery/twrp.fstab
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
DEVICE_RESOLUTION := 720x1280
RECOVERY_SDCARD_ON_DATA := true
TW_USE_TOOLBOX := true
TW_NEW_ION_HEAP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_TARGET_USES_QCOM_BSP := true
TW_EXTRA_LANGUAGES := true
TW_INPUT_BLACKLIST := "accelerometer\x0alis3dh-accel"
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INCLUDE_CRYPTO := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
TW_NO_SCREEN_TIMEOUT := true
# Include tzdata for recovery
# PRODUCT_COPY_FILES += \
#    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
endif

# RIL
BOARD_GLOBAL_CFLAGS += -DUSE_RIL_VERSION_11

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(VENDOR_PATH)/sepolicy

# Sensors
USE_SENSOR_MULTI_HAL := true

# Wifi
TARGET_PROVIDES_WCNSS_QMI := true

# dexopt
#ifeq ($(HOST_OS),linux)
#    ifeq ($(TARGET_BUILD_VARIANT),user)
#        ifeq ($(WITH_DEXPREOPT),)
#            WITH_DEXPREOPT := true
#            WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true
#        endif
#    endif
#endif

# inherit from the proprietary version

-include vendor/coolpad/cp3622a/BoardConfigVendor.mk
