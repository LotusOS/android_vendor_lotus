ifeq ($(LOTUS_BUILD_TYPE), OFFICIAL)

LOTUS_OTA_VERSION_CODE := eleven

PRODUCT_GENERIC_PROPERTIES += \
    org.lotus.ota.version_code=$(LOTUS_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1
PRODUCT_PACKAGES += \
    Updates
endif
