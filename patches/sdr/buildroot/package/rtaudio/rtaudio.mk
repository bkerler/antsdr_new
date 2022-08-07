################################################################################
#
# RTAUDIO
#
################################################################################

RTAUDIO_VERSION = 5.2.0
RTAUDIO_SITE = http://www.music.mcgill.ca/~gary/rtaudio/release
RTAUDIO_SOURCE = rtaudio-$(RTAUDIO_VERSION).tar.gz
RTAUDIO_LICENSE = RtAudio License
RTAUDIO_LICENSE_FILES = LICENSE
RTAUDIO_INSTALL_STAGING = YES
#RTAUDIO_DEPENDENCIES = 
#RTAUDIO_CONFIG_SCRIPTS = 

RTAUDIO_LANGUAGE_BINDINGS = cl
# C++ bindings require a C++11 capable gcc, and -Wsuggest-override support
ifeq ($(BR2_INSTALL_LIBSTDCPP)$(BR2_TOOLCHAIN_GCC_AT_LEAST_5),yy)
RTAUDIO_LANGUAGE_BINDINGS += cpp
endif

#RTAUDIO_CONF_OPTS = 

$(eval $(cmake-package))
