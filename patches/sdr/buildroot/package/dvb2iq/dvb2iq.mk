################################################################################
#
# DVB2IQ
#
################################################################################

#DVB2IQ_VERSION = 2.2.5
DVB2IQ_SITE =  ./libdvbmod/DvbTsToIQ
#DVB2IQ_SOURCE = /home/eric/plutosdr-fw/buildroot/dl/libdvbmod.tar.gz
#DVB2IQ_INSTALL_STAGING = YES
#DVB2IQ_AUTORECONF = YES
DVB2IQ_SITE_METHOD = local
DVB2IQ_LDFLAGS += -lfftw3

define DVB2IQ_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CXX)" LD="$(TARGET_LD)" -C $(@D)


endef
# $(MAKE) CC="$(TARGET_CC)"
#define LIBDVBMOD_INSTALL_TARGET_CMDS
#    $(INSTALL) -D -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin
#endef

$(eval $(generic-package))
