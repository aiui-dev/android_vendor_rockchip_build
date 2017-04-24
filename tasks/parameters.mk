ifneq ($(filter rk%,$(strip $(TARGET_BOARD_PLATFORM))),)

$(INSTALLED_PARAMETERS_TARGET): $(MKPARAMS) \
		$(TARGET_PARAMETERS_BASE) $(TARGET_PARAMETERS_MTDPARTS)
	$(call pretty,"Target parameters: $@")
	$(hide) $(MKPARAMS) \
		"$(TARGET_PARAMETERS_BASE)" \
		"$(BOARD_KERNEL_CMDLINE)" \
		"$(TARGET_PARAMETERS_BLOCK_DEVICE)" \
		"$(TARGET_PARAMETERS_MTDPARTS)" \
		> "$@"
	@echo -e ${CL_CYN}"Made parameters: $@"${CL_RST}

endif # TARGET_BOARD_PLATFORM
