ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

#
# Tools that are prebuilts for TARGET_BUILD_APPS
#

MKKRNLIMG := $(HOST_OUT_EXECUTABLES)/mkkrnlimg
RESOURCE_TOOL := $(HOST_OUT_EXECUTABLES)/resource_tool

endif # TARGET_BOARD_PLATFORM
