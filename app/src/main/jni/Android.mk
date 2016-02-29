LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libswresample
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavutil
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavcodec
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavformat
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libswscale
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavfilter
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavdevice
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
LOCAL_EXPORT_C_INCLUDES := $(FFPATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libavresample
LOCAL_SRC_FILES := $(FFPATH)/lib/$(LOCAL_MODULE).so
LOCAL_EXPORT_C_INCLUDES := $(FFPATH)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libmpv
LOCAL_SRC_FILES := $(PREFIX)/lib/libmpv.so
LOCAL_EXPORT_C_INCLUDES := $(PREFIX)/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := libplayer
LOCAL_CFLAGS    := -Werror
LOCAL_SRC_FILES := main.cpp
LOCAL_LDLIBS    := -llog -lGLESv3 -lEGL
LOCAL_SHARED_LIBRARIES := swresample avutil avcodec avformat swscale avfilter avdevice mpv

include $(BUILD_SHARED_LIBRARY)
