ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

$(INSTALLED_KERNELIMAGE_TARGET): $(MKKRNLIMG) $(INSTALLED_KERNEL_TARGET)
	$(call pretty,"Target kernel image: $@")
	$(hide) $(MKKRNLIMG) $(INSTALLED_KERNEL_TARGET) $@ > /dev/null
	@echo -e ${CL_CYN}"Made kernel image: $@"${CL_RST}

endif # TARGET_BOARD_PLATFORM
