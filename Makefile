TARGET := 3DS

NAME := FBI

BUILD_DIR := build
OUTPUT_DIR := output
INCLUDE_DIRS := include
SOURCE_DIRS := source
ROMFS_DIR := romfs

LIBRARY_DIRS += $(DEVKITPRO)/libctru $(DEVKITPRO)/portlibs/armv6k $(DEVKITPRO)/portlibs/3ds
LIBRARIES += curl mbedtls mbedx509 mbedcrypto jansson z citro3d ctru

EXTRA_OUTPUT_FILES := servefiles

BUILD_FLAGS := -Wno-format-truncation

VERSION_PARTS := 2.6.0 # $(subst ., ,$(shell git describe --tags --abbrev=0))

VERSION_MAJOR := 2#$(word 1, $(VERSION_PARTS))
VERSION_MINOR := 6#$(word 2, $(VERSION_PARTS))
VERSION_MICRO := 0#$(word 3, $(VERSION_PARTS))

CHINESE_VERSION := Build 9

DESCRIPTION := 3DS开源应用管理器.
AUTHOR := Steveice10 Theopse

PRODUCT_CODE := CTR-P-CFBI
UNIQUE_ID := 0xF8001

ICON_FLAGS := --flags visible,ratingrequired,recordusage --cero 153 --esrb 153 --usk 153 --pegigen 153 --pegiptr 153 --pegibbfc 153 --cob 153 --grb 153 --cgsrr 153

BANNER_AUDIO := meta/audio_3ds.wav
BANNER_IMAGE := meta/banner_3ds.cgfx
ICON := meta/icon_3ds.png
LOGO := meta/logo_3ds.bcma.lz

# INTERNAL #

include buildtools/make_base
