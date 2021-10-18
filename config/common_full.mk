# Inherit common Lotus stuff
$(call inherit-product, vendor/lotus/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
