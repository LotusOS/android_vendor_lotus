# Inherit common Lotus stuff
$(call inherit-product, vendor/cherish/lotus/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
