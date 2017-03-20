ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

INSTALLED_DTBS := $(wildcard $(KERNEL_OUT)/arch/$(TARGET_KERNEL_ARCH)/boot/dts/*.dtb)

$(INSTALLED_RESOURCEIMAGE_TARGET): $(RESOURCE_TOOL) \
		$(INSTALLED_KERNELIMAGE_TARGET) $(INSTALLED_DTBS)
	$(call pretty,"Target resource image: $@")
	$(hide) pushd $(dir $@); $(RESOURCE_TOOL) $(INSTALLED_DTBS); popd

endif # TARGET_BOARD_PLATFORM
