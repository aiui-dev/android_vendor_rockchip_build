ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

$(INSTALLED_RESOURCEIMAGE_TARGET): $(RESOURCE_TOOL) $(INSTALLED_KERNELIMAGE_TARGET)
	$(call pretty,"Target resource image: $@")
	$(hide) pushd $(dir $@); \
		$(RESOURCE_TOOL) $(wildcard $(KERNEL_OUT)/arch/$(TARGET_KERNEL_ARCH)/boot/dts/*.dtb); \
		popd
	@echo -e ${CL_CYN}"Made resource image: $@"${CL_RST}

endif # TARGET_BOARD_PLATFORM
