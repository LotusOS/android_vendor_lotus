# Inherit mini common Lotus stuff
$(call inherit-product, vendor/lotus/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME
