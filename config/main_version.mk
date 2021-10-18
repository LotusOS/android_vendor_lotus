# Versioning System
LOTUS_BUILD_VARIANT ?= Vanilla
LOTUS_BUILD_TYPE ?= UNOFFICIAL
LOTUS_MAINTAINER ?= Unknown
LOTUS_CODENAME := A12

ifeq ($(WITH_GMS), true)
LOTUS_BUILD_VARIANT := Gapps

PRODUCT_PACKAGES += \
    LotusThemesStub
endif

# LotusOS Release
ifeq ($(LOTUS_BUILD_TYPE), OFFICIAL)

  OFFICIAL_DEVICES = $(shell cat vendor/lotus/lotus.devices)
  FOUND_DEVICE =  $(filter $(LOTUS_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(LOTUS_BUILD))
      LOTUS_BUILD_TYPE := OFFICIAL
    else
      LOTUS_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(LOTUS_BUILD)")
    endif
endif

# System version
TARGET_PRODUCT_SHORT := $(subst lotus_,,$(LOTUS_BUILD_TYPE))

LOTUS_DATE_YEAR := $(shell date -u +%Y)
LOTUS_DATE_MONTH := $(shell date -u +%m)
LOTUS_DATE_DAY := $(shell date -u +%d)
LOTUS_DATE_HOUR := $(shell date -u +%H)
LOTUS_DATE_MINUTE := $(shell date -u +%M)
LOTUS_BUILD_DATE_UTC := $(shell date -d '$(LOTUS_DATE_YEAR)-$(LOTUS_DATE_MONTH)-$(LOTUS_DATE_DAY) $(LOTUS_DATE_HOUR):$(LOTUS_DATE_MINUTE) UTC' +%s)
LOTUS_BUILD_DATE := $(LOTUS_DATE_YEAR)$(LOTUS_DATE_MONTH)$(LOTUS_DATE_DAY)-$(LOTUS_DATE_HOUR)$(LOTUS_DATE_MINUTE)

LOTUS_PLATFORM_VERSION := 12.0

LOTUSVERSION := 3.0

LOTUS_VERSION := Lotus-OS-v$(LOTUSVERSION)-$(LOTUS_BUILD_DATE)-$(LOTUS_BUILD)-$(LOTUS_BUILD_TYPE)-$(LOTUS_BUILD_VARIANT)
LOTUS_VERSION_PROP := $(PLATFORM_VERSION)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.lotus.version=$(LOTUSVERSION) \
    ro.lotus.version.display=$(LOTUS_VERSION) \
    ro.lotus.build_date=$(LOTUS_BUILD_DATE) \
    ro.lotus.maintainer=$(LOTUS_MAINTAINER) \
    ro.lotus.codename=$(LOTUS_CODENAME) \
    ro.lotus.version.prop=$(LOTUS_VERSION_PROP) \
    ro.lotus.build_date_utc=$(LOTUS_BUILD_DATE_UTC) \
    ro.lotus.build_type=$(LOTUS_BUILD_TYPE)
