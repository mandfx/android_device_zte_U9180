$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/U9180/U9180-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/U9180/overlay

# Files
PRODUCT_COPY_FILES += \
    device/zte/U9180/recovery/fstab.qcom:root/fstab.qcom \

# ramdisk
PRODUCT_COPY_FILES += \
    device/zte/U9180/ramdisk/init.nubia.sh:root/init.nubia.sh \
    device/zte/U9180/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/zte/U9180/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/zte/U9180/ramdisk/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh \
    device/zte/U9180/ramdisk/init.qcom.factory.sh:root/init.qcom.factory.sh \
    device/zte/U9180/ramdisk/init.qcom.ril.sh:root/init.qcom.ril.sh \
    device/zte/U9180/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/zte/U9180/ramdisk/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
    device/zte/U9180/ramdisk/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
    device/zte/U9180/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/zte/U9180/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc
 

LOCAL_PATH := device/zte/U9180
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
