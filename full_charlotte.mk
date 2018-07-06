#
# Copyright 2012 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    device/huawei/charlotte/dummykernel:kernel

PRODUCT_NAME := omni_charlotte
PRODUCT_DEVICE := charlotte
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor P20 Pro
PRODUCT_MANUFACTURER := Huawei

# Kernel inline build
#TARGET_KERNEL_CONFIG := charlotte_defconfig
#TARGET_VARIANT_CONFIG := bcharlotte_defconfig
#TARGET_SELINUX_CONFIG := charlotte_defconfig
