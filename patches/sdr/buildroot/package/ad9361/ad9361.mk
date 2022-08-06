################################################################################
#
# libad9361-iio
#
################################################################################

AD9361_VERSION = b32005f
AD9361_SITE = https://github.com/analogdevicesinc/libad9361-iio
AD9361_SITE_METHOD = git
AD9361_INSTALL_STAGING = YES
AD9361_INSTALL_TARGET = YES
AD9361_LICENSE = GNU LGPL v2.1
AD9361_LICENSE_FILES = LICENSE
AD9361_DEPENDENCIES += libiio
AD9361_TARGET: $(AD9361_DEPENDENCIES)
#AD9361_CONF_OPTS = -DENABLE_PYTHON3=OFF -DENABLE_PYTHON=OFF

$(eval $(cmake-package))
