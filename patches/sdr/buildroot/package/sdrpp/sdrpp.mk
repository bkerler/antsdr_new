################################################################################
#
# SDRPP
#
################################################################################

#https://github.com/pothosware/SDRPP/archive/master/SDRPP-master.zip
SDRPP_VERSION = 1.0.4
SDRPPF_SOURCE = sdrpp-$(SDRPP_VERSION).tar.gz
SDRPP_SITE = https://github.com/AlexandreRouma/SDRPlusPlus
SDRPP_SITE_METHOD = git
SDRPP_INSTALL_STAGING = YES
SDRPP_LICENSE = GNU General Public License v3.0
SDRPP_LICENSE_FILES = license
SDRPP_DEPENDENCIES = rtaudio libglfw libgl mesa3d
SDRPP_CONF_OPTS = -DOPT_BUILD_AIRSPY_SOURCE=OFF \
                  -DOPT_BUILD_AIRSPYHF_SOURCE=OFF \
                  -DOPT_BUILD_HACKRF_SOURCE=OFF \
                  -DOPT_BUILD_RFSPACE_SOURCE=OFF \
                  -DOPT_BUILD_LIMESDR_SOURCE=OFF \
                  -DOPT_BUILD_RTL_SDR_SOURCE=OFF \
                  -DOPT_BUILD_SPYSERVER_SOURCE=OFF \
                  -DOPT_BUILD_METEOR_DEMODULATOR=OFF \
                  -DOPT_BUILD_RADIO=OFF \
                  -DOPT_BUILD_DISCORD_PRESENCE=OFF \
                  -DOPT_BUILD_RECORDER=OFF \
                  -DOPT_BUILD_RIGCTL_SERVER=OFF \
                  -DOPT_BUILD_FREQUENCY_MANAGER=OFF \
                  -DOPT_BUILD_AUDIO_SINK=OFF \
                  -DOPT_BACKEND_GLFW=ON
SDRPP_TARGET: $(SDRPP_DEPENDENCIES)

$(eval $(cmake-package))
