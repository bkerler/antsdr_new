################################################################################
#
# soapyremote
#
################################################################################

SOAPYREMOTE_VERSION = f7dca6e67491dc56e851209f3edef2fd92656421
#SOAPYREMOTE_SOURCE = SoapyRemote.git
SOAPYREMOTE_SITE = https://github.com/pothosware/SoapyRemote
SOAPYREMOTE_SITE_METHOD = git
SOAPYREMOTE_INSTALL_STAGING = YES
SOAPYREMOTE_INSTALL_TARGET = YES
SOAPYREMOTE_LICENSE = Boost Software License 1.0
SOAPYREMOTE_LICENSE_FILES = LICENSE_1_0.txt
SOAPYREMOTE_DEPENDENCIES += soapysdr
SOAPYREMOTE_TARGET: $(SOAPYREMOTE_DEPENDENCIES)

#SOAPYREMOTE_CONF_OPTS = -DBUILD_DEMOS=ON
#SOAPYREMOTE_DEPENDENCIES = libglib2 host-pkgconf

$(eval $(cmake-package))
