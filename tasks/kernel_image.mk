ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

$(INSTALLED_KERNELIMAGE_TARGET): $(MKKRNLIMG) $(INSTALLED_KERNEL_TARGET)
	$(call pretty,"Target kernel image: $@")
	$(MKKRNLIMG) $(INSTALLED_KERNEL_TARGET) $@ > /dev/null

endif # TARGET_BOARD_PLATFORM
