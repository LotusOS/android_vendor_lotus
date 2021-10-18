# Inherit full common Lotus stuff
$(call inherit-product, vendor/lotus/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
