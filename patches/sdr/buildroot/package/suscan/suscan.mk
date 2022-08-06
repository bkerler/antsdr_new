################################################################################
#
# SUSCAN
#
################################################################################


#SUSCAN_VERSION =  v0.1.0
SUSCAN_VERSION = 37dad542b97aff24654f0bb80fb8e85af7cb84ab
SUSCAN_SITE = https://github.com/BatchDrake/suscan
SUSCAN_SOURCE = suscan-0.1.0.tar.gz
#SUSCAN-$(SUSCAN_VERSION).tar.gz

#SUSCAN_VERSION = 571cc9aeccb2004d81032cea484324aacb1a5852

SUSCAN_SITE_METHOD = git

SUSCAN_INSTALL_STAGING = YES
SUSCAN_LICENSE = GPL-2.0
#SUSCAN_LICENSE_FILES = LICENSE
SUSCAN_DEPENDENCIES += sigutils
SUSCAN_TARGET: $(SUSCAN_DEPENDENCIES)


$(eval $(cmake-package))
