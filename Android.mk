ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),caf-msm8916)
display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils libhdmi libqservice
display-hals += libmemtrack
ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif
ifeq ($(call is-vendor-board-platform,QCOM),true)
    include $(call all-named-subdir-makefiles,$(display-hals))
else
ifneq ($(filter msm% apq%,$(TARGET_BOARD_PLATFORM)),)
    include $(call all-named-subdir-makefiles,$(display-hals))
endif
<<<<<<< HEAD
=======
endif
endif #TARGET_QCOM_DISPLAY_VARIANT
>>>>>>> f9f8d5332... display-caf-msm8916: guard makefile
