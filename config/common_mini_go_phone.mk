# Set Lineage specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Lotus stuff
$(call inherit-product, vendor/lotus/config/common_mini_phone.mk)
