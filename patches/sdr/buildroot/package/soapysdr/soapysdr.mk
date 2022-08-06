################################################################################
#
# soapysdr
#
################################################################################

#https://github.com/pothosware/SoapySDR/archive/master/SoapySDR-master.zip
SOAPYSDR_VERSION = 9cbaa3cfb4ad6231a743319d71bda3634885a428
SOAPYSDR_MASTER_SOURCE_BASENAME = soapysdr
#SOAPYSDR_MASTER_SOURCE =$(SOAPYSDR_MASTER_SOURCE_BASENAME).zip
SOAPYSDR_SITE = https://github.com/pothosware/SoapySDR
SOAPYSDR_SITE_METHOD = git
SOAPYSDR_INSTALL_STAGING = YES
SOAPYSDR_INSTALL_TARGET = YES
SOAPYSDR_LICENSE = Boost Software License 1.0
SOAPYSDR_LICENSE_FILES = LICENSE_1_0.txt
#SOAPYSDR_MASTER_DEPENDENCIES = python
SOAPYSDR_CONF_OPTS = -DENABLE_PYTHON3=OFF -DENABLE_PYTHON=OFF
# -DCFLAGS=$(TARGET_CC) -DCXXFLAGS=$(TARGET_CXX)

define SOAPYSDR_MASTER_EXTRACT_CMDS
    echo $(@D)
    unzip $(DL_DIR)/$(SOAPYSDR_MASTER_VERSION)/$(SOAPYSDR_MASTER_SOURCE_BASENAME).zip -d $(@D)
    mv $(@D)/$(SOAPYSDR_MASTER_SOURCE_BASENAME)/* $(@D)
 #   rmdir $(@D)/$(SOAPYSDR_MASTER_SOURCE_BASENAME)
endef

$(eval $(cmake-package))
