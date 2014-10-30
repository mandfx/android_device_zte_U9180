## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := x9180

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/x9180/device_x9180.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := x9180
PRODUCT_NAME := cm_x9180
PRODUCT_BRAND := zte
PRODUCT_MODEL := x9180
PRODUCT_MANUFACTURER := zte
