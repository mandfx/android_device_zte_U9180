$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/ZTE/U9180/U9180-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/ZTE/U9180/overlay

# Files
PRODUCT_COPY_FILES += \
    device/ZTE/U9180/recovery/fstab.qcom:root/fstab.qcom \

LOCAL_PATH := device/ZTE/U9180
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_U9180
PRODUCT_DEVICE := U9180
