# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(TARGET_ARCH),)
TARGET_ARCH := arm
endifUSE_CAMERA_STUB := true

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/Coolpad/REL/BoardConfigVendor.mk

-include $(QCPATH)/common/msm8909/BoardConfigVendor.mk
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_HAVE_HDMI_OUT := false
TARGET_USES_OVERLAY := true

TARGET_USES_PCI_RCS := false
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

TARGET_NO_BOOTLOADER := false

TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true

TARGET_NO_RPC := true
GET_FRAMEBUFFER_FORMAT_FROM_HWC := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := msm8909
TARGET_BOOTLOADER_BOARD_NAME := MSM8909

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

ADD_RADIO_FILES ?= true

PROTOBUF_SUPPORTED := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_QCOM_BSP := true

TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_msm
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

HAVE_SYNAPTICS_I2C_RMI4_FW_UPGRADE := true

TARGET_LDPRELOAD := libNimsWrap.so

TARGET_PER_MGR_ENABLED := true

MALLOC_IMPL := dlmalloc

TARGET_HW_DISK_ENCRYPTION := true

TARGET_PREBUILT_KERNEL := device/Coolpad/REL/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
