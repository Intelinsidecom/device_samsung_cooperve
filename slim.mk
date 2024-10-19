#
# Copyright (C) 2012 The CyanogenMod Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyCooperVE

# Bootanimation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
PRODUCT_COPY_FILES += \
     vendor/slim/prebuilt/common/bootanimation/720.zip:system/media/bootanimation.zip

# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/cooperve/full_cooperve.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cooperve
PRODUCT_NAME := slim_cooperve
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-S5830i

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=slim_cooperve TARGET_DEVICE=GT-S5830i BUILD_FINGERPRINT=samsung/GT-S5830i/GT-S5830i:4.4.4/KTU84Q:user/release-keys PRIVATE_BUILD_DESC="GT-GT-S5830i-user 4.4.4 KTU84Q release-keys"
