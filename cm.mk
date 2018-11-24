# Release name
PRODUCT_RELEASE_NAME := cp3622a

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/coolpad/cp3622a/device_cp3622a.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cp3622a
PRODUCT_NAME := cm_cp3622a
PRODUCT_BRAND := Coolpad
PRODUCT_MODEL := cp3622a
PRODUCT_MANUFACTURER := Coolpad
