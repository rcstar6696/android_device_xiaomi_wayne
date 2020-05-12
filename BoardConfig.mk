#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from sdm660-common
include device/xiaomi/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/wayne

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm660
TARGET_KERNEL_CONFIG := wayne_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := wayne

# Display
TARGET_SCREEN_DENSITY := 480

# WLAN MAC
WLAN_MAC_SYMLINK := true

# Inherit from proprietary files
include vendor/xiaomi/wayne-common/BoardConfigVendor.mk
