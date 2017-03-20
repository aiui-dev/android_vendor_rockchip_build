LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := resource_tool.c common.c tests.c

LOCAL_CFLAGS += -O2 -Wall -Wno-unused-parameter
LOCAL_MODULE := resource_tool

include $(BUILD_HOST_EXECUTABLE)
