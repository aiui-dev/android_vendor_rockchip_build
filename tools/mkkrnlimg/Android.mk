LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := mkkrnlimg.c

LOCAL_CFLAGS += -O2 -Wall -Wno-unused-parameter
LOCAL_MODULE := mkkrnlimg

include $(BUILD_HOST_EXECUTABLE)
