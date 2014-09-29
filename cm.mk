## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := U9180

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/U9180/device_U9180.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := U9180
PRODUCT_NAME := cm_U9180
PRODUCT_BRAND := zte
PRODUCT_MODEL := U9180
PRODUCT_MANUFACTURER := zte
