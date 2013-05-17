# Inherit AOSP device configuration for sensation.
$(call inherit-product, device/htc/pyramid/full_pyramid.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# pyramid overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/pyramid-common

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_hdpi
PA_PREF_FIX := pa_fix

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_pyramid
PRODUCT_BRAND := Htc
PRODUCT_DEVICE := pyramid
PRODUCT_MODEL := sensation
PRODUCT_MANUFACTURER := Htc

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Sensation TARGET_DEVICE=Sensation BUILD_FINGERPRINT=Htc/Sensation/Sensation:4.1.2/JZO54K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.1.2 JZO54K XXLPQ release-keys"
PRODUCT_RELEASE_NAME := sensation

# Copy bootanimation.zip
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip
