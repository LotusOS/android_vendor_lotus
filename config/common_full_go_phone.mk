# Set Lineage specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Lotus stuff
$(call inherit-product, vendor/lotus/config/common_full_phone.mk)
