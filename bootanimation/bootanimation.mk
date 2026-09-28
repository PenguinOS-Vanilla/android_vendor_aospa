#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

# Bootanimation
BOOTANIMATION_RES := $(strip $(TARGET_BOOT_ANIMATION_RES))
ifeq ($(filter 720 1080 1440 2160,$(BOOTANIMATION_RES)),)
    $(warning TARGET_BOOT_ANIMATION_RES '$(BOOTANIMATION_RES)' is unset or unsupported, using 1080)
    BOOTANIMATION_RES := 1080
endif
PRODUCT_COPY_FILES += vendor/aospa/bootanimation/$(BOOTANIMATION_RES).zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
