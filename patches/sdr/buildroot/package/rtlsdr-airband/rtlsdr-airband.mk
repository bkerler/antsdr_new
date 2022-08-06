################################################################################
#
# RTLSDR_AIRBAND
#
################################################################################
RTLSDR_AIRBAND_VERSION := v4.0.2
#RTLSDR_AIRBAND_VERSION := 7c80a9fd1e681f9f30e7532be275fca086443227
RTLSDR_AIRBAND_SITE := https://github.com/szpajder/RTLSDR-Airband
RTLSDR_AIRBAND_SITE_METHOD := git
RTLSDR_AIRBAND_INSTALL_TARGET := YES
RTLSDR_AIRBAND_INSTALL_STAGING := YES
RTLSDR_AIRBAND_LICENSE := GPL-2.0
RTLSDR_AIRBAND_DEPENDENCIES += libconfig
RTLSDR_AIRBAND_CONF_OPTS := -DWITH_SOAPYSDR=1 -DNFM=1 -DPULSE=0 -DWITH_RTLSDR=0

define RTLSDR_AIRBAND_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 -D $(@D)/src/rtl_airband $(TARGET_DIR)/usr/bin/rtl_airband
endef
$(eval $(cmake-package))
