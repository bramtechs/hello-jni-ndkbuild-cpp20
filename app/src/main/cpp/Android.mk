LOCAL_PATH := $(call my-dir)

NDK_MODULE_PATH := $(NDK_ROOT)/sources/android/native_app_glue

include $(CLEAR_VARS)

LOCAL_MODULE := hello-jni
LOCAL_SRC_FILES := hello-jni.cc
LOCAL_LDLIBS := -llog -landroid
LOCAL_CFLAGS := -Wall -Wextra -O2 -fexceptions -frtti -std=c++20
LOCAL_C_INCLUDES :=  $(NDK_ROOT)/sources/android/native_app_glue

include $(BUILD_SHARED_LIBRARY)

include $(NDK_MODULE_PATH)/Android.mk