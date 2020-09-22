#
# Copyright (C) 2020 AIMROM
# Copyright (C) 2020 KudProject Development
#
# SPDX-License-Identifier: Apache-2.0
#

# Default to BFQ I/O scheduler
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.io.scheduler=cfq

# Override Display Density
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=420

# Use Vulkan backend for Skia UI rendering
PRODUCT_PRODUCT_PROPERTIES += \
    debug.hwui.renderer=skiavk
