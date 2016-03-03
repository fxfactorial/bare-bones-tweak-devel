# -*- makefile -*-

# This is what you need to have to use theos with the nix provided
# clang compiler, replace gar with your user name
override _SDK_DIR := /home/gar/.nix-profile
override _THEOS_PLATFORM_LIPO := armv7-apple-darwin11-lipo
override SDKBINPATH := ${shell echo "/home/`whoami`/.nix-profile/bin"}
override SDKTARGET := armv7-apple-darwin11

include $(THEOS)/makefiles/common.mk

TOOL_NAME = bare_bones
bare_bones_FILES = main.mm

include $(THEOS_MAKE_PATH)/tool.mk
