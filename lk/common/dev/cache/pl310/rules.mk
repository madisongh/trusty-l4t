LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

GLOBAL_INCLUDES += \
	$(LOCAL_DIR)/include

GLOBAL_DEFINES +=

MODULE_SRCS += \
	$(LOCAL_DIR)/pl310.c

include make/module.mk
