# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# inherit from common millet
include device/samsung/millet-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := milletlte,milletltetmo,milletltexx

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1866465280

TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /system/vendor/bin/hw/rild=27

# Kernel
TARGET_KERNEL_CONFIG := lineage_milletlte_defconfig

# Radio
BOARD_PROVIDES_LIBRIL := true
TARGET_RIL_VARIANT := caf

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# inherit from the proprietary version
-include vendor/samsung/milletlte/BoardConfigVendor.mk
