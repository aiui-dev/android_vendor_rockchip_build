ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

#
# Tools that are prebuilts for TARGET_BUILD_APPS
#

MKKRNLIMG := $(HOST_OUT_EXECUTABLES)/mkkrnlimg

endif # TARGET_BOARD_PLATFORM
